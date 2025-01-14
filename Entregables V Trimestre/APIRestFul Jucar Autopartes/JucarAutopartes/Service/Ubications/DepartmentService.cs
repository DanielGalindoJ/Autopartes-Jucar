﻿using AutoMapper;
using Contracts;
using Service.Contracts.Ubications;
using Shared.DataTransferObjects.Ubications.Department;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Service.Ubications
{
    internal sealed class DepartmentService : IDepartmentService
    {
        private readonly IRepositoryManager _repository;
        private readonly ILoggerManager _logger;
        private readonly IMapper _mapper;

        public DepartmentService(IRepositoryManager repository, ILoggerManager logger, IMapper mapper)
        {
            _repository = repository;
            _logger = logger;
            _mapper = mapper;
        }

        public async Task<IEnumerable<DepartmentDto>> GetDepartmentsAsync(bool trackChanges)
        {
            var departments = await _repository.Department.GetDepartmentsAsync(trackChanges);

            var departmentsDto = _mapper.Map<IEnumerable<DepartmentDto>>(departments);

            return departmentsDto;
        }
    }
}
