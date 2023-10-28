﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entities.Exceptions.BadRequest.Products
{
    public sealed class CategoryCollectionBadRequest : BadRequestException
    {
        public CategoryCollectionBadRequest()
            : base("Category collection sent from a client is null.")
        {

        }
    }
}
