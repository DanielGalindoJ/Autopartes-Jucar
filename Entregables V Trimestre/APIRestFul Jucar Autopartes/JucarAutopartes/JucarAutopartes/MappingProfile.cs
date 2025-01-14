﻿using AutoMapper;
using Entities.Models.Products;
using Entities.Models.Providers;
using Entities.Models.Sales;
using Entities.Models.Ubications;
using Entities.Models.Users;
using Shared.DataTransferObjects.Products;
using Shared.DataTransferObjects.Providers.Provider;
using Shared.DataTransferObjects.Providers.ProviderAddress;
using Shared.DataTransferObjects.Providers.ProviderPhone;
using Shared.DataTransferObjects.Sales.Contribution;
using Shared.DataTransferObjects.Sales.Customer;
using Shared.DataTransferObjects.Sales.CustomerAddress;
using Shared.DataTransferObjects.Sales.CustomerPhone;
using Shared.DataTransferObjects.Sales.Order;
using Shared.DataTransferObjects.Sales.OrderDetail;
using Shared.DataTransferObjects.Sales.PaymentMethod;
using Shared.DataTransferObjects.Ubications.Department;
using Shared.DataTransferObjects.Ubications.Municipality;
using Shared.DataTransferObjects.Ubications.Neighborhood;
using Shared.DataTransferObjects.Users;

namespace JucarAutopartes
{
    public class MappingProfile : Profile
    {
        public MappingProfile()
        {
            /* Categorias */

            CreateMap<Category, CategoryDto>();

            CreateMap<CategoryForCreationDto, Category>();

            CreateMap<CategoryForUpdateDto, Category>();


            /* Subcategorias */

            CreateMap<Subcategory, SubcategoryDto>();

            CreateMap<SubcategoryForCreationDto, Subcategory>();

            CreateMap<SubcategoryForUpdateDto, Subcategory>();


            /* Autopartes */

            CreateMap<Autopart, AutopartDto>();

            CreateMap<AutopartForCreationDto, Autopart>();

            CreateMap<AutopartForUpdateDto, Autopart>();


            /* Materias Primas */

            CreateMap<RawMaterial, RawMaterialDto>();

            CreateMap<RawMaterialForCreationDto, RawMaterial>();

            CreateMap<RawMaterialForUpdateDto, RawMaterial>();


            /* Stock Materias Primas */

            CreateMap<Stock, StockDto>();

            CreateMap<StockForCreationDto, Stock>();

            CreateMap<StockForUpdateDto, Stock>();


            /* Perdidas */

            CreateMap<Loss, LossDto>();

            CreateMap<LossForCreationDto, Loss>();

            CreateMap<LossForUpdateDto, Loss>();


            /* Movimientos */

            CreateMap<Movement, MovementDto>();

            CreateMap<MovementForCreationDto, Movement>();

            CreateMap<MovementForUpdateDto, Movement>();


            /* Proveedores */

            CreateMap<Provider, ProviderDto>();

            CreateMap<ProviderForCreationDto, Provider>();

            CreateMap<ProviderForUpdateDto, Provider>();


            /* Telefonos de Proveedor */

            CreateMap<ProviderPhone, ProviderPhoneDto>();

            CreateMap<ProviderPhoneForCreationDto, ProviderPhone>();

            CreateMap<ProviderPhoneForUpdateDto, ProviderPhone>();


            /* Direcciones de Proveedor */

            CreateMap<ProviderAddress, ProviderAddressDto>()
                .ForMember(dest => dest.NeighborhoodName, opt => opt.MapFrom(src => src.Neighborhood.Name));

            CreateMap<ProviderAddressForCreationDto, ProviderAddress>();

            CreateMap<ProviderAddressForUpdateDto, ProviderAddress>();


            /* Clientes */

            CreateMap<Customer, CustomerDto>();

            CreateMap<CustomerForCreationDto, Customer>();

            CreateMap<CustomerForUpdateDto, Customer>();


            /* Telefónos de Cliente */

            CreateMap<CustomerPhone, CustomerPhoneDto>();

            CreateMap<CustomerPhoneForCreationDto, CustomerPhone>();

            CreateMap<CustomerPhoneForUpdateDto, CustomerPhone>();


            /* Direcciones de Cliente */

            CreateMap<CustomerAddress, CustomerAddressDto>()
                .ForMember(dest => dest.NeighborhoodName, opt => opt.MapFrom(src => src.Neighborhood.Name));

            CreateMap<CustomerAddressForCreationDto, CustomerAddress>();

            CreateMap<CustomerAddressForUpdateDto, CustomerAddress>();


            /* Pedidos */

            CreateMap<Order, OrderDto>();

            CreateMap<OrderForCreationDto, Order>();

            CreateMap<OrderForUpdateDto, Order>();


            /* Detalles de Pedido */

            CreateMap<OrderDetail, OrderDetailDto>()
                .ForMember(dest => dest.AutopartName, opt => opt.MapFrom(src => src.Autopart.Name));

            CreateMap<OrderDetailForCreationDto, OrderDetail>();

            CreateMap<OrderDetailForUpdateDto, OrderDetail>();


            /* Métodos de Pago */

            CreateMap<PaymentMethod, PaymentMethodDto>();

            CreateMap<PaymentMethodForCreationDto, PaymentMethod>();

            CreateMap<PaymentMethodForUpdateDto, PaymentMethod>();


            /* Contribuciones */

            CreateMap<Contribution, ContributionDto>()
                .ForMember(dest => dest.PaymentMethodName, opt => opt.MapFrom(src => src.PaymentMethod.PaymentMethodName));

            CreateMap<ContributionForCreationDto, Contribution>();

            CreateMap<ContributionForUpdateDto, Contribution>();


            /* Usuarios */

            CreateMap<UserForRegistrationDto, User>();


            /* Departamentos */

            CreateMap<Department, DepartmentDto>();


            /* Municipios */

            CreateMap<Municipality, MunicipalityDto>();


            /* Barrio */

            CreateMap<Neighborhood, NeighborhoodDto>();
        }
    }
}
