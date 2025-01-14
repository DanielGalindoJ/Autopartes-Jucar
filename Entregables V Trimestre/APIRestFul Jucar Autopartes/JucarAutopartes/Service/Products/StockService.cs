﻿using AutoMapper;
using Contracts;
using Entities.Exceptions.NotFound.Products;
using Entities.Models.Products;
using Service.Contracts.Products;
using Shared.DataTransferObjects.Products;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Service.Products
{
    internal sealed class StockService : IStockService
    {
        private readonly IRepositoryManager _repository;
        private readonly ILoggerManager _logger;
        private readonly IMapper _mapper;

        public StockService(IRepositoryManager repository, ILoggerManager logger, IMapper mapper)
        {
            _repository = repository;
            _logger = logger;
            _mapper = mapper;
        }

        /* Crear */
        public async Task<StockDto> CreateStockForRawMaterialAsync(Guid rawMaterialId, StockForCreationDto stockForCreation, bool trackChanges)
        {
            await CheckIfRawMaterialExists(rawMaterialId, trackChanges);

            var stockEntity = _mapper.Map<Stock>(stockForCreation);

            _repository.Stock.CreateStockForRawMaterial(rawMaterialId, stockEntity);

            await _repository.SaveAsync();

            var stockToReturn = _mapper.Map<StockDto>(stockEntity);

            return stockToReturn;
        }

        /* Eliminar */
        public async Task DeleteStockForRawMaterialAsync(Guid rawMaterialId, Guid id, bool trackChanges)
        {
            await CheckIfRawMaterialExists(rawMaterialId, trackChanges);

            var stockForRawMaterial = await GetStockForRawMaterialAndCheckIfItExists(rawMaterialId, id, trackChanges);

            _repository.Stock.DeleteStock(stockForRawMaterial);

            await _repository.SaveAsync();
        }

        /* Único Registro */
        public async Task<StockDto> GetStockForRawMaterialAsync(Guid rawMaterialId, Guid id, bool trackChanges)
        {
            await CheckIfRawMaterialExists(rawMaterialId, trackChanges);

            var stockDb = await GetStockForRawMaterialAndCheckIfItExists(rawMaterialId, id, trackChanges);

            var stock = _mapper.Map<StockDto>(stockDb);

            return stock;
        }

        /* Listar */
        public async Task<IEnumerable<StockDto>> GetStocksAsync(Guid rawMaterialId, bool trackChanges)
        {
            await CheckIfRawMaterialExists(rawMaterialId, trackChanges);

            var stocksFromDb = await _repository.Stock.GetStocksAsync(rawMaterialId, trackChanges);

            var stocksDto = _mapper.Map<IEnumerable<StockDto>>(stocksFromDb);

            return stocksDto;
        }

        /* Actualizar */
        public async Task UpdateStockForRawMaterialAsync(Guid rawMaterialId, Guid id, StockForUpdateDto stockForUpdate, bool rawTrackChanges, bool stcTrackChanges)
        {
            await CheckIfRawMaterialExists(rawMaterialId, rawTrackChanges);

            var stockEntity = await GetStockForRawMaterialAndCheckIfItExists(rawMaterialId, id, stcTrackChanges);

            _mapper.Map(stockForUpdate, stockEntity);

            stockEntity.setModificationDate();

            await _repository.SaveAsync();
        }






        /* <----- Métodos Privados -----> */

        private async Task CheckIfRawMaterialExists(Guid rawMaterialId, bool trackChanges)
        {
            var rawMaterial = await _repository.RawMaterial.GetRawMaterialAsync(rawMaterialId, trackChanges);

            if (rawMaterial is null)
                throw new RawMaterialNotFoundException(rawMaterialId);
        }


        private async Task<Stock> GetStockForRawMaterialAndCheckIfItExists(Guid rawMaterialId, Guid id, bool trackChanges)
        {
            var stockDb = await _repository.Stock.GetStockByRawMaterialAsync(rawMaterialId, id, trackChanges);

            if (stockDb is null)
                throw new StockNotFoundException(id);

            return stockDb;
        }
    }
}
