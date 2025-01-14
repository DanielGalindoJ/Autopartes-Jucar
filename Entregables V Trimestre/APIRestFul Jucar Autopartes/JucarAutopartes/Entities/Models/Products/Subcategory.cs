﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entities.Models.Products
{
    public class Subcategory
    {

        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public Guid SubcategoryID { get; set; }

        [Required(ErrorMessage = "¡Ingrese un nombre para la subcategoría!")]
        [MaxLength(50)]
        [RegularExpression("^[A-Za-z\\s\\d\\p{P}\\p{S}]+$", ErrorMessage = "El formato del campo {0} no es válido. Asegúrate de seguir el patrón requerido.")]
        [DisplayName("Nombre")]
        public string? Name { get; set; }

        [Required]
        [DisplayName("Estado")]
        public bool State { get; set; }

        [Required]
        [DisplayName("Creación del Registro")]
        public DateTime CreationDate { get; set; }

        [Required]
        [DisplayName("Modificación del Registro")]
        public DateTime ModificationDate { get; set; }

        //Constructor

        public Subcategory()
        {
            State = true;
            CreationDate = DateTime.Now;
            ModificationDate = DateTime.Now;
        }

        public void setModificationDate()
        {
            ModificationDate = DateTime.Now;
        }

        //Relaciones con otros modelos

        //Category
        public Guid CategoryId { get; set; }

        [Required(ErrorMessage = "Debe seleccionar una Categoría")]
        [DisplayName("Categoría")]
        public Category? Category { get; set; }

        //Autopart
        public ICollection<Autopart>? Autoparts { get; set; }
    }
}
