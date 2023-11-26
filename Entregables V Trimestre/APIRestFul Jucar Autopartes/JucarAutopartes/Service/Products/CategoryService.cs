﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AutoMapper;
using Contracts;
using Entities.Exceptions;
using Entities.Exceptions.BadRequest.Products;
using Entities.Exceptions.NotFound.Products;
using Entities.Models.Products;
using Service.Contracts.Products;
using Shared.DataTransferObjects.Products;

namespace Service.Products
{
    internal sealed class CategoryService : ICategoryService
    {
        private readonly IRepositoryManager _repository;
        private readonly ILoggerManager _logger;
        private readonly IMapper _mapper;

        public CategoryService(IRepositoryManager repository, ILoggerManager logger, IMapper mapper)
        {
            _repository = repository;
            _logger = logger;
            _mapper = mapper;
        }

        /* Crear Categoria */
        public async Task<CategoryDto> CreateCategoryAsync(CategoryForCreationDto category)
        {
            var categoryEntity = _mapper.Map<Category>(category);

            _repository.Category.CreateCategory(categoryEntity);

            await _repository.SaveAsync();

            var categoryToReturn = _mapper.Map<CategoryDto>(categoryEntity);

            return categoryToReturn;
        }

        /* Crear una colección */
        public async Task<(IEnumerable<CategoryDto> categories, string ids)> CreateCategoryCollectionAsync(IEnumerable<CategoryForCreationDto> categoryCollection)
        {
            if (categoryCollection is null)
                throw new CategoryCollectionBadRequest();

            var categoryEntities = _mapper.Map<IEnumerable<Category>>(categoryCollection);

            foreach (var category in categoryEntities)
            {
                _repository.Category.CreateCategory(category);
            }

            await _repository.SaveAsync();

            var categoryCollectionToReturn = _mapper.Map<IEnumerable<CategoryDto>>(categoryEntities);

            var ids = string.Join(",", categoryCollectionToReturn.Select(c => c.CategoryId));

            return (categories: categoryCollectionToReturn, ids);
        }

        /* Obtener todos los registros de la tabla */
        public async Task<IEnumerable<CategoryDto>> GetAllCategoriesAsync(bool trackChanges)
        {
            var categories = await _repository.Category.GetAllCategoriesAsync(trackChanges);

            var categoriesDto = _mapper.Map<IEnumerable<CategoryDto>>(categories);

            return categoriesDto;
        }

        /* Obtener un registro especifico */
        public async Task<CategoryDto> GetCategoryAsync(Guid id, bool trackChanges)
        {
            var category = await GetCategoryAndCheckIfItExists(id, trackChanges);

            var categoryDto = _mapper.Map<CategoryDto>(category);

            return categoryDto;
        }

        /* Obtener una colección de registros */
        public async Task<IEnumerable<CategoryDto>> GetByIdsAsync(IEnumerable<Guid> ids, bool trackChanges)
        {
            if (ids is null)
                throw new IdParametersBadRequestException();

            var categoryEntities = await _repository.Category.GetByIdsAsync(ids, trackChanges);

            if (ids.Count() != categoryEntities.Count())
                throw new CollectionByIdsBadRequestException();

            var categoriesToReturn = _mapper.Map<IEnumerable<CategoryDto>>(categoryEntities);

            return categoriesToReturn;
        }

        /* Actualizar una categoria */
        public async Task UpdateCategoryAsync(Guid categoryId, CategoryForUpdateDto categoryForUpdate, bool trackChanges)
        {
            var category = await GetCategoryAndCheckIfItExists(categoryId, trackChanges);

            _mapper.Map(categoryForUpdate, category);

            category.setModificationDate();

            await _repository.SaveAsync();
        }

        /* Eliminar una categoría */
        public async Task DeleteCategoryAsync(Guid categoryId, bool trackChanges)
        {
            var category = await GetCategoryAndCheckIfItExists(categoryId, trackChanges);

            _repository.Category.DeleteCategory(category);

            await _repository.SaveAsync();
        }


        

        /* <----- Métodos Privados -----> */

        private async Task<Category> GetCategoryAndCheckIfItExists(Guid id, bool trackChanges)
        {
            var category = await _repository.Category.GetCategoryAsync(id, trackChanges);

            if (category is null)
                throw new CategoryNotFoundException(id);

            return category;
        }

    }
}
