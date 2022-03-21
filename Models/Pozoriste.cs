using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text.Json.Serialization;

namespace Models
{
    [Table("Pozoriste")]
    public class Pozoriste
    {
        
        [Key]
        public int ID { get; set; }
        [Required]
        [MaxLength(200)]
        [RegularExpression(@"\w+")]
        public string Naziv { get; set; }
        [Range(1,10)]
        public int BrojScena { get; set; }
       
        public List<Predstava> Predstave { get; set; }
        public List<Izvodjenje> Repertoar { get; set; }
        
        public List<Scena> Scene { get; set; }

    }
}