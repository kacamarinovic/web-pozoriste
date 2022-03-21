using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Models
{
    [Table("Glumac")]
    public class Glumac
    {
        [Key]
        public int ID { get; set; }
        [MaxLength(50)]
        [Required]
        public string Ime { get; set; }
        [Required]
        [MaxLength(50)]
        public string Prezime { get; set; }
        public List<Uloga> Uloge { get; set; }

    }
}