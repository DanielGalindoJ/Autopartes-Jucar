﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entities.Exceptions.NotFound.Sales
{
    public sealed class OrderNotFoundException : NotFoundException
    {
        public OrderNotFoundException(Guid orderId)
            :base($"The Order with ID: {orderId} doesn´t exist in the database.")
        {
            
        }
    }
}
