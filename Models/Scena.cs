using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text.Json.Serialization;

namespace Models
{
    [Table("Scena")]
    public class Scena
    {
        [Key]
        public int ID { get; set; }
        public Pozoriste Pozoriste { get; set; }
        public string Naziv { get; set; }
        
        public List<Izvodjenje> Izvodjenja { get; set; }
    }
}