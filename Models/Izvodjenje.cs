using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text.Json.Serialization;

namespace Models
{
    [Table("Izvodjenje")]
    public class Izvodjenje
    {
        [Key]
        public int ID { get; set; }

        
        public Predstava Predstava { get; set; }
        
        public DateTime Datum { get; set; }

        
        public Scena Scena { get; set; }
        
        public Pozoriste Pozoriste { get; set; }
    }
}