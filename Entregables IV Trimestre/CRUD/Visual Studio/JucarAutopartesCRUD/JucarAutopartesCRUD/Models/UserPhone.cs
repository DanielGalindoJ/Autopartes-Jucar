﻿using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using JucarAutopartesCRUD.Models.Enums;

namespace JucarAutopartesCRUD.Models
{
    public class UserPhone
    {
        [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int UserPhoneID { get; set; }

        [Required(ErrorMessage = "¡Ingrese un valor!"), StringLength(20)]
        public PhoneType PhoneType { get; set; }

        [Required(ErrorMessage = "¡Ingrese un valor!"), StringLength(10), RegularExpression("^[0-9]{10}$")]
        public string? PhoneNumber { get; set; }
    }
}
