﻿using Entities.Models.Products;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Contracts.Products
{
    public interface IAutopartMaterialRepository
    {
        /* Crear una Subcategoria */
        void CreateAutopartMaterialForAutopart(Guid autopartId, AutopartMaterial autopartMaterial);
    }
}
