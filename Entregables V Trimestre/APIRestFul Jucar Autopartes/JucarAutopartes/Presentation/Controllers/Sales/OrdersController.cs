﻿using Microsoft.AspNetCore.Mvc;
using Service.Contracts;
using Shared.DataTransferObjects.Providers.Provider;
using Shared.DataTransferObjects.Sales.Order;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Presentation.Controllers.Sales
{
    [Route("api/orders")]
    [ApiController]
    public class OrdersController : ControllerBase
    {
        private readonly IServiceManager _service;

        public OrdersController(IServiceManager service) =>
            _service = service;

        /* Crear */
        [HttpPost]
        public async Task<IActionResult> CreateOrder([FromBody] OrderForCreationDto order)
        {
            if (order is null)
                return BadRequest("OrderForCreationDto object is null");


            if (!ModelState.IsValid)
                return UnprocessableEntity(ModelState);

            var createdOrder = await _service.OrderService.CreateOrderAsync(order);

            return CreatedAtRoute("OrderById", new { id = createdOrder.OrderID }, createdOrder);
        }

        /* Eliminar */
        [HttpDelete("{id:guid}")]
        public async Task<IActionResult> DeleteOrder(Guid id)
        {
            await _service.OrderService.DeleteOrderAsync(id, trackChanges: false);

            return NoContent();
        }

        /* Listar */
        [HttpGet]
        public async Task<IActionResult> GetOrders()
        {
            var orders = await _service.OrderService.GetAllOrdersAsync(trackChanges: false);

            return Ok(orders);
        }

        /* Un registro */
        [HttpGet("{id:guid}", Name = "OrderById")]
        public async Task<IActionResult> GetOrder(Guid id)
        {
            var order = await _service.OrderService.GetOrderAsync(id, trackChanges: false);

            return Ok(order);
        }

        /* Actualizar */
        [HttpPut("{id:guid}")]
        public async Task<IActionResult> UpdateOrder(Guid id, [FromBody] OrderForUpdateDto order)
        {
            if (order is null)
                return BadRequest("OrderForUpdateDto object is null");

            if (!ModelState.IsValid)
                return UnprocessableEntity(ModelState);

            await _service.OrderService.UpdateOrderAsync(id, order, trackChanges: true);

            return NoContent();
        }
    }
}
