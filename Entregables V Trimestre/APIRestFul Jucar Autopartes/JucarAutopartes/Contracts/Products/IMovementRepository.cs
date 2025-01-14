﻿using Entities.Models.Products;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Contracts.Products
{
    public interface IMovementRepository
    {
        /* Crear */
        void CreateMovementForRawmaterial(Guid rawMaterialId, Movement movement);

        /* Listar */
        Task<IEnumerable<Movement>> GetMovementsAsync(Guid rawMaterialId, bool trackChanges);

        /* Único Registro */
        Task<Movement> GetMovementByRawmaterialAsync(Guid rawMaterialId, Guid id, bool trackChanges);

        /* Eliminar*/
        void DeleteMovement(Movement movement);
    }
}
