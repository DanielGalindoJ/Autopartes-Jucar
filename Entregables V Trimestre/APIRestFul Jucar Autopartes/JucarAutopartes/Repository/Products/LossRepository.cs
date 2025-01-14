﻿using Contracts.Products;
using Entities.Models.Products;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Repository.Products
{
    public class LossRepository : RepositoryBase<Loss>, ILossRepository
    {
        public LossRepository(RepositoryContext repositoryContext)
            :base(repositoryContext)
        {
            
        }

        /* Crear */

        public void CreateLossForAutopart(Guid autopartId, Loss loss)
        {
            loss.AutopartId = autopartId;

            Create(loss);
        }


        /* Eliminar */

        public void DeleteLoss(Loss loss) => Delete(loss);


        /* Único Registro */

        public async Task<Loss> GetLossByAutopartAsync(Guid autopartId, Guid id, bool trackChanges) =>
            await FindByCondition(l => l.AutopartId.Equals(autopartId) && l.LossID.Equals(id), trackChanges)
            .SingleOrDefaultAsync();


        /* Listar */

        public async Task<IEnumerable<Loss>> GetLossesAsync(Guid autopartId, bool trackChanges) =>
            await FindByCondition(l => l.AutopartId.Equals(autopartId), trackChanges)
            .OrderBy(l => l.AmountLoss)
            .ToListAsync();
    }
}
