﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AutoMapper;
using Contracts;
using Entities.Exceptions;
using Entities.Exceptions.NotFound.Products;
using Entities.Models.Products;
using Microsoft.VisualBasic;
using Service.Contracts.Products;
using Shared.DataTransferObjects.Products;

namespace Service.Products
{
    internal sealed class AutopartService : IAutopartService
    {
        private readonly IRepositoryManager _repository;
        private readonly ILoggerManager _logger;
        private readonly IMapper _mapper;

        public AutopartService(IRepositoryManager repository, ILoggerManager logger, IMapper mapper)
        {
            _repository = repository;
            _logger = logger;
            _mapper = mapper;
        }

        /* Crear una autoparte */
        public async Task<AutopartDto> CreateAutopartForSubcategoryAsync(Guid subcategoryId, AutopartForCreationDto autopartForCreation, bool trackChanges)
        {
            await CheckIfSubcategoryExists(subcategoryId, trackChanges);

            var autopartEntity = _mapper.Map<Autopart>(autopartForCreation);

            _repository.Autopart.CreateAutopartForSubcategory(subcategoryId, autopartEntity);

            await _repository.SaveAsync();

            var autopartToReturn = _mapper.Map<AutopartDto>(autopartEntity);

            return autopartToReturn;
        }

        /* Obteniendo todas las Autopartes en general */
        public async Task<IEnumerable<AutopartDto>> GetAllAutopartsAsync(bool trackChanges)
        {
            var autoparts = await _repository.Autopart.GetAllAutopartsAsync(trackChanges);

            var autopartsDto = _mapper.Map<IEnumerable<AutopartDto>>(autoparts);

            return autopartsDto;
        }

        /* Obteniendo Autoparte por su Id */
        public async Task<AutopartDto> GetAutopartByIdAsync(Guid id, bool trackChanges)
        {
            var autopart = await GetAutopartAndCheckIfItExists(id, trackChanges);

            var autopartDto = _mapper.Map<AutopartDto>(autopart);

            return autopartDto;
        }

        /* Obteniendo las Autopartes de una Subcategoria */
        public async Task<IEnumerable<AutopartDto>> GetAutopartsAsync(Guid subcategoryId, bool trackChanges)
        {
            await CheckIfSubcategoryExists(subcategoryId, trackChanges);

            var autopartsFromDb = await _repository.Autopart.GetAutopartsAsync(subcategoryId, trackChanges);

            var autopartsDto = _mapper.Map<IEnumerable<AutopartDto>>(autopartsFromDb);

            return autopartsDto;
        }

        /* Obtener una Autoparte especifica de una Subcategoria */
        public async Task<AutopartDto> GetAutopartBySubcategoryAsync(Guid subcategoryId, Guid id, bool trackChanges)
        {
            await CheckIfSubcategoryExists(subcategoryId, trackChanges);

            var autopartDb = await GetAutopartForSubcategoryAndCheckIfItExists(subcategoryId, id, trackChanges);

            var autopart = _mapper.Map<AutopartDto>(autopartDb);

            return autopart;
        }

        /* Obtener una colección de registros */
        public async Task<IEnumerable<AutopartDto>> GetByIdsAsync(IEnumerable<Guid> ids, bool trackChanges)
        {
            if (ids is null)
                throw new IdParametersBadRequestException();

            var autopartEntities = await _repository.Autopart.GetByIdsAsync(ids, trackChanges);

            if (ids.Count() != autopartEntities.Count())
                throw new CollectionByIdsBadRequestException();

            var autopartsToReturn = _mapper.Map<IEnumerable<AutopartDto>>(autopartEntities);

            return autopartsToReturn;
        }

        /* Actualizar una Autoparte */
        public async Task UpdateAutopartForSubcategoryAsync(Guid subcategoryId, Guid id, AutopartForUpdateDto autopartForUpdate, bool subcTrackChanges, bool trackChanges)
        {
            await CheckIfSubcategoryExists(subcategoryId, trackChanges);

            var autopartEntity = await GetAutopartForSubcategoryAndCheckIfItExists(subcategoryId, id, trackChanges);

            _mapper.Map(autopartForUpdate, autopartEntity);

            autopartEntity.setModificationDate();

            await _repository.SaveAsync();
        }

        /* Eliminar una Autoparte */
        public async Task DeleteAutopartForSubcategoryAsync(Guid subcategoryId, Guid id, bool trackChanges)
        {
            await CheckIfSubcategoryExists(subcategoryId, trackChanges);

            var autopartForSubcategory = await GetAutopartForSubcategoryAndCheckIfItExists(subcategoryId, id, trackChanges);

            _repository.Autopart.DeleteAutopart(autopartForSubcategory);

            await _repository.SaveAsync();
        }






        /* <----- Métodos Privados -----> */

        private async Task<Autopart> GetAutopartAndCheckIfItExists(Guid id, bool trackChanges)
        {
            var autopart = await _repository.Autopart.GetAutopartByIdAsync(id, trackChanges);

            if (autopart is null)
                throw new SubcategoryNotFoundException(id);

            return autopart;
        }


        private async Task CheckIfSubcategoryExists(Guid subcategoryId, bool trackChanges)
        {
            var subcategory = await _repository.Subcategory.GetSubcategoryByIdAsync(subcategoryId, trackChanges);

            if (subcategory is null)
                throw new SubcategoryNotFoundException(subcategoryId);
        }


        private async Task<Autopart> GetAutopartForSubcategoryAndCheckIfItExists(Guid subcategoryId, Guid id, bool trackChanges)
        {
            var autopartDb = await _repository.Autopart.GetAutopartBySubcategoryAsync(subcategoryId, id, trackChanges);

            if (autopartDb is null)
                throw new AutopartNotFoundException(id);

            return autopartDb;
        }
    }
}
