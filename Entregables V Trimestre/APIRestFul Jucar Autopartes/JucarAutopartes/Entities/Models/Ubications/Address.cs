﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entities.Models.Factories;
using Entities.Models.Providers;
using Entities.Models.Sales;
using Entities.Models.Users;

namespace Entities.Models.Ubications
{
    public class Address
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int AddressID { get; set; }

        [MaxLength(200)]
        [RegularExpression("^[A-Za-z\\s]+$")]
        [DisplayName("Información Adicional")]
        public string? AditionalInformation { get; set; }

        [Required]
        [DisplayName("Creación del Regístro")]
        public DateTime CreationDate { get; set; }

        [Required]
        [DisplayName("Modificación del Regístro")]
        public DateTime ModificationDate { get; set; }

        //Constructor

        public Address()
        {
            CreationDate = DateTime.Now;
            ModificationDate = DateTime.Now;
        }

        //Relaciones con otros modelos 

        //FactoryAddress

        public ICollection<FactoryAddress> FactoryAddresses { get; set; }

        //CustomerAddress

        public ICollection<CustomerAddress> CustomerAddresses { get; set; }

        //UserAddress

        public ICollection<UserAddress> UserAddresses { get; set; }

        //ProviderAddress

        public ICollection<ProviderAddress> ProviderAddresses { get; set; }

        //Street

        public int StreetID { get; set; }
        public Street? Street { get; set; }

        //Addressee

        public int AddresseeID { get; set; }
        public Addressee? Addressee { get; set; }

        //Building

        public int BuildingID { get; set; }
        public Building? Building { get; set; }

        //AddressType

        public int AddressTypeID { get; set; }
        public AddressType? AddressType { get; set; }
    }
}
