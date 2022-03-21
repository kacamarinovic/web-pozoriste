using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text.Json.Serialization;

namespace Models
{
    [Table("Predstava")]
    public class Predstava
    {
        [Key]
        public int ID { get; set; }
        [MaxLength(200)]
        [RegularExpression(@"\w+")]
        [Required]
        public string Naziv { get; set; }
        [MaxLength(100)]
        [RegularExpression(@"\w+")]
        public string Reditelj { get; set; }
        [MaxLength(20)]
        [RegularExpression(@"\w+")]
        public string Zanr { get; set; }
      
        [Range(1990,2022)]
        public int GodinaPremijere { get; set; }
        
        public Pozoriste Pozoriste { get; set; }
        
        public List<Uloga> Uloge { get; set; }
        
        public List<Izvodjenje> Izvodjenja { get; set; }
    }
}