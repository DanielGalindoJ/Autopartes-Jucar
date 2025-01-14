﻿using Microsoft.AspNetCore.Mvc;
using Presentation.ActionFilters;
using Service.Contracts;
using Shared.DataTransferObjects.Sales.PaymentMethod;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Presentation.Controllers.Sales
{
    [Route("api/paymentMethods")]
    [ApiController]
    public class PaymentMethodsController : ControllerBase
    {
        private readonly IServiceManager _service;

        public PaymentMethodsController(IServiceManager service) =>
            _service = service;

        /* Crear */
        [HttpPost]
        [ServiceFilter(typeof(ValidationFilterAttribute))]
        public async Task<IActionResult> CreatePaymentMethod([FromBody] PaymentMethodForCreationDto paymentMethod)
        {
            var createdPaymentMethod = await _service.PaymentMethodService.CreatePaymentMethodAsync(paymentMethod);

            return CreatedAtRoute("PaymentMethodById", new { id = createdPaymentMethod.PaymentMethodID }, createdPaymentMethod);
        }

        /* Eliminar */
        [HttpDelete("{id:guid}")]
        public async Task<IActionResult> DeletePaymentMethod(Guid id)
        {
            await _service.PaymentMethodService.DeletePaymentMethodAsync(id, trackChanges: false);

            return NoContent();
        }

        /* Listar */
        [HttpGet]
        public async Task<IActionResult> GetPaymentMethods()
        {
            var paymentMethods = await _service.PaymentMethodService.GetAllPaymentMethodsAsync(trackChanges: false);

            return Ok(paymentMethods);
        }

        /* Un registro */
        [HttpGet("{id:guid}", Name = "PaymentMethodById")]
        public async Task<IActionResult> GetPaymentMethod(Guid id)
        {
            var paymentMethod = await _service.PaymentMethodService.GetPaymentMethodAsync(id, trackChanges: false);

            return Ok(paymentMethod);
        }

        /* Actualizar */
        [HttpPut("{id:guid}")]
        [ServiceFilter(typeof(ValidationFilterAttribute))]
        public async Task<IActionResult> UpdatePaymentMethod(Guid id, [FromBody] PaymentMethodForUpdateDto paymentMethodForUpdate)
        {
            await _service.PaymentMethodService.UpdatePaymentMethodAsync(id, paymentMethodForUpdate, trackChanges: true);

            return NoContent();
        }
    }
}
