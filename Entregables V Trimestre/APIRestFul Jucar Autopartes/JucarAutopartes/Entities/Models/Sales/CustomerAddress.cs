﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using Entities.Models.Ubications;

namespace Entities.Models.Sales
{
    public class CustomerAddress
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public Guid CustomerAddressID { get; set; }

        [Required(ErrorMessage = "Ingresa la dirección")]
        [MaxLength(50)]
        [RegularExpression("^(?:Cra\\.|Carrera|Calle|Cl|Avenida|Av|Transversal|Trv|Diagonal|Dg)\\.?\\s*\\d{1,5}\\s(?:\\w{2,})\\s#-?\\d{1,5}(?:-\\d{1,4})?$\r\n", ErrorMessage = "El formato del campo {0} no es válido. Asegúrate de seguir el patrón requerido.")]
        [DisplayName("Dirección")]
        public string? Address { get; set; }

        [Required(ErrorMessage = "Ingresa el tipo de dirección")]
        [MaxLength(50)]
        [RegularExpression("^[A-Za-z.\\s]+$", ErrorMessage = "El formato del campo {0} no es válido. Asegúrate de seguir el patrón requerido.")]
        [DisplayName("Tipo de Dirección")]
        public string? AddressType { get; set; }

        [Required]
        [DisplayName("Estado")]
        public bool State { get; set; }

        [Required]
        [DisplayName("Creación de Registro")]
        public DateTime CreationDate { get; set; }

        [Required]
        [DisplayName("Modificación de Registro")]
        public DateTime ModificationDate { get; set; }

        //Constructor
        public CustomerAddress()
        {
            State = true;
            CreationDate = DateTime.Now;
            ModificationDate = DateTime.Now;
        }

        /* Métodos */

        public void setModificationDate()
        {
            ModificationDate = DateTime.Now;
        }

        //Relaciones con otros modelos 

        /* Barrio */

        public Guid NeighborhoodId { get; set; }
        public Neighborhood? Neighborhood { get; set; }

        //Customer 

        public Guid CustomerId { get; set; }
        public Customer? Customer { get; set; }

        /* Se eliminó la relación con Address */
    }
}
