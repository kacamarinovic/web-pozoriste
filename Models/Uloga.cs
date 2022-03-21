using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Models
{
    [Table("Uloga")]
    public class Uloga
    {
        [Key]
        public int ID { get; set; }
        [Required]
        [RegularExpression(@"\w+")]
        [MaxLength(50)]
        public string Lik { get; set; }
        public Glumac Glumac { get; set; } 
        public Predstava Predstava { get; set; }

    }
}