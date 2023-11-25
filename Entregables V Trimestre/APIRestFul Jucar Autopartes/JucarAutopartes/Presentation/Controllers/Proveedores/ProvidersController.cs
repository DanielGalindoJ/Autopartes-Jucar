﻿using Microsoft.AspNetCore.Mvc;
using Service.Contracts;
using Shared.DataTransferObjects.Providers.Provider;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Presentation.Controllers.Proveedores
{
    [Route("api/providers")]
    [ApiController]
    public class ProvidersController : ControllerBase
    {
        private readonly IServiceManager _service;

        public ProvidersController(IServiceManager service) => 
            _service = service;


        /* Crear */
        [HttpPost]
        public async Task<IActionResult> CreateProvider([FromBody] ProviderForCreationDto provider)
        {
            if (provider is null)
                return BadRequest("ProviderForCreationDto object is null");

            if (!ModelState.IsValid)
                return UnprocessableEntity(ModelState);

            var createdProvider = await _service.ProviderService.CreateProviderAsync(provider);

            return CreatedAtRoute("ProviderById", new { id = createdProvider.ProviderID }, createdProvider);
        }

        /* Eliminar */
        [HttpDelete("{id:guid}")]
        public async Task<IActionResult> DeleteProvider(Guid id)
        {
            await _service.ProviderService.DeleteProviderAsync(id, trackChanges: false);

            return NoContent();
        }

        /* Listar */
        [HttpGet]
        public async Task<IActionResult> GetProviders() 
        { 
            var providers = await _service.ProviderService.GetAllProvidersAsync(trackChanges: false);

            return Ok(providers);
        }

        /* Un registro */
        [HttpGet("{id:guid}", Name = "ProviderById")]
        public async Task<IActionResult> GetProvider(Guid id)
        {
            var provider = await _service.ProviderService.GetProviderAsync(id, trackChanges: false);

            return Ok(provider);
        }

        /* Actualizar */
        [HttpPut("{id:guid}")]
        public async Task<IActionResult> UpdateProvider(Guid id, [FromBody] ProviderForUpdateDto provider)
        {
            if (provider is null)
                return BadRequest("ProviderForUpdateDto object is null");

            if (!ModelState.IsValid)
                return UnprocessableEntity(ModelState);

            await _service.ProviderService.UpdateProviderAsync(id, provider, trackChanges: true);

            return NoContent();
        }
    }
}
