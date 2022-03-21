using System;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Models;

namespace web_pozoriste.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class IzvodjenjeController : ControllerBase
    {
        public PozoristeContext Context { get; set; }

        public IzvodjenjeController(PozoristeContext context)
        {
           Context = context;
        }

        [Route("IzmeniIzvodjenje/{ID}/{IDPozoriste}/{IDScena}/{IDPredstava}/{Datum}")]
        [HttpPut]
        public async Task<ActionResult> IzmeniIzvodjenje(int ID, int IDPozoriste, int IDScena, int IDPredstava, string Datum )
        {
            if(ID <= 0)
            {
                return BadRequest("Nevalidan ID izvodjenja!");
            }
           if(IDPozoriste <= 0)
            {
                return BadRequest("Nevalidan ID Pozorista!");
            }

            if(IDScena <= 0)
            {
                return BadRequest("Nevalidan ID Scene!");
            }

            if(IDPredstava <= 0)
            {
                return BadRequest("Nevalidan ID Predstave!");
            }

            
            try
            {
                var izvodjenjeZaIzmenu=Context.Izvodjenja.Find(ID);
                if(izvodjenjeZaIzmenu==null)
                return BadRequest("Ne postoji to izvodjenje!");

               var pozoriste = Context.Pozorista.Find(IDPozoriste);
                
                if (pozoriste == null)
                    return BadRequest("Ne postoji to pozoriste!");
                var predstava = Context.Predstave.Find(IDPredstava);
                if (predstava == null)
                    return BadRequest("Ne postoji ta predstava!");
                var scena=  Context.Scene.Find(IDScena);
                if (scena == null)
                    return BadRequest("Ne postoji ta scena!");
                var datum = DateTime.ParseExact(Datum, "yyyy-MM-dd HH:mm", null);


                 var predstavaZaProveru = Context.Predstave.Where(p=> p==predstava)
                                            .Include(p => p.Pozoriste)
                                            .Where(p => p.Pozoriste == pozoriste)
                                            .FirstOrDefault();
                if (predstavaZaProveru == null)
                {
                    return BadRequest("Izabrana predstava ne pripada tom pozoristu");
                }
                
                var scenaZaProveru = Context.Scene.Where(p=> p==scena)
                                            .Include(p => p.Pozoriste)
                                            .Where(p => p.Pozoriste == pozoriste)
                                            .FirstOrDefault();
                if (scenaZaProveru == null)
                {
                    return BadRequest("Izabrana scena ne pripada tom pozoristu");
                }

                 var izvodjenjeZaProveru = Context.Izvodjenja.Where(p => DateTime.Compare(p.Datum.Date,datum.Date)==0)
                                            .Include(p => p.Scena)
                                            .Where(p => p.Scena == scena)
                                            .FirstOrDefault();
                if (izvodjenjeZaProveru != null && izvodjenjeZaIzmenu.ID != izvodjenjeZaProveru.ID)
                {
                    return BadRequest("Izabrana scena je vec zauzeta tog dana!");
                }
                
                izvodjenjeZaIzmenu.Pozoriste=pozoriste;
                izvodjenjeZaIzmenu.Predstava=predstava;
                izvodjenjeZaIzmenu.Datum=datum;
                izvodjenjeZaIzmenu.Scena=scena;



                Context.Izvodjenja.Update(izvodjenjeZaIzmenu);
                await Context.SaveChangesAsync();
                return Ok("Zamenjeno izvodjenje!");

            }
            catch(Exception e)
            {
                return BadRequest(e.Message);
            }
        }

        [Route("DodatiIzvodjenje/{IDPozoriste}/{IDScena}/{IDPredstava}/{Datum}")]
        [HttpPost]
        public async Task<ActionResult> DodajIzvodjenje(int IDPozoriste, int IDScena, int IDPredstava, string Datum)
        {
            if(IDPozoriste <= 0)
            {
                return BadRequest("Nevalidan ID Pozorista!");
            }

            if(IDScena <= 0)
            {
                return BadRequest("Nevalidan ID Scene!");
            }

            if(IDPredstava <= 0)
            {
                return BadRequest("Nevalidan ID Predstave!");
            }

            try
            {
                var pozoriste = Context.Pozorista.Find(IDPozoriste);
                
                if (pozoriste == null)
                    return BadRequest("Ne postoji to pozoriste!");
                var predstava = Context.Predstave.Find(IDPredstava);
                if (predstava == null)
                    return BadRequest("Ne postoji ta predstava!");
                var scena=  Context.Scene.Find(IDScena);
                if (scena == null)
                    return BadRequest("Ne postoji ta scena!");
                var datum = DateTime.ParseExact(Datum, "yyyy-MM-dd HH:mm", null);

                

                var predstavaZaProveru = Context.Predstave.Where(p=> p==predstava)
                                            .Include(p => p.Pozoriste)
                                            .Where(p => p.Pozoriste == pozoriste)
                                            .FirstOrDefault();
                if (predstavaZaProveru == null)
                {
                    return BadRequest("Izabrana predstava ne pripada tom pozoristu");
                }
                
                var scenaZaProveru = Context.Scene.Where(p=> p==scena)
                                            .Include(p => p.Pozoriste)
                                            .Where(p => p.Pozoriste == pozoriste)
                                            .FirstOrDefault();
                if (scenaZaProveru == null)
                {
                    return BadRequest("Izabrana scena ne pripada tom pozoristu");
                }

                var izvodjenjeZaProveru = Context.Izvodjenja.Where(p => DateTime.Compare(p.Datum.Date,datum.Date)==0)
                                            .Include(p => p.Scena)
                                            .Where(p => p.Scena == scena)
                                            .FirstOrDefault();
                if (izvodjenjeZaProveru != null)
                {
                    return BadRequest("Izabrana scena je vec zauzeta tog dana!");
                }

                Izvodjenje i = new Izvodjenje
                {
                    
                    Predstava = predstava,
                    Pozoriste = pozoriste,
                    Scena= scena,
                    Datum=datum
                };
                Context.Izvodjenja.Add(i);
               
               
                await Context.SaveChangesAsync();
               
                return Ok("Uspesno dodato izvodjenje!");
            }
            catch(Exception e)
            {
                return BadRequest("Doslo je do greske:" + e.Message);
            }
        }

        [Route("ObrisatiIzvodjenje/{id}")]
        [HttpDelete]
        public async Task<ActionResult> ObrisiIzvodjenje(int id)
        {
            if(id<=0)
            {
                return BadRequest("Pogresan broj indeksa!");
            }

            try
            {
                var izv = await Context.Izvodjenja.FindAsync(id);
                if (izv == null)
                    return BadRequest("Ne postoji izvodjenje!");

                Context.Izvodjenja.Remove(izv);
                await Context.SaveChangesAsync();
                return Ok("Izbrisano izvodjenje!");
            }
            catch(Exception e)
            {
                return BadRequest(e.Message);
            }



        }

        [Route("PreuzetiRepertoarPozorista/{PozoristeID}")]
        [HttpGet]
        public async Task<ActionResult> PreuzmiRepertoarPozorista( int PozoristeID)
        {
            if(PozoristeID <= 0)
            {
                return BadRequest("Nepostojeca igra!");
            }
           
            try
            {
                var pozoriste = Context.Pozorista.Where(p => p.ID == PozoristeID).FirstOrDefault();
                if(pozoriste==null)
                return BadRequest("Ne postoji to pozoriste!");
                 var izvodjenja = await Context.Izvodjenja.Where(i => i.Pozoriste==pozoriste)
                 .Select(m =>                  
                 new
                 {
                    ID=m.ID,
                    Datum =m.Datum.ToShortDateString(),
                    Vreme =m.Datum.ToShortTimeString(),
                    Scena = m.Scena.Naziv,
                    Predstava = m.Predstava.Naziv
                 }
                 )
                 .ToListAsync();

                
                return Ok(izvodjenja);
            }
            catch(Exception e)
            {
                return BadRequest("Doslo je do greske:" + e.Message);
            }
        }



        [Route("DodatiIzvodjenje2/{IDPozoriste}/{IDScena}/{IDPredstava}/{Datum}")]
        [HttpPost]
        public async Task<ActionResult> DodajIzvodjenje2(int IDPozoriste, int IDScena, int IDPredstava, DateTime Datum)
        {
            if(IDPozoriste <= 0)
            {
                return BadRequest("Nevalidan ID Pozorista!");
            }

            if(IDScena <= 0)
            {
                return BadRequest("Nevalidan ID Scene!");
            }

            if(IDPredstava <= 0)
            {
                return BadRequest("Nevalidan ID Predstave!");
            }

            try
            {
                var pozoriste = Context.Pozorista.Find(IDPozoriste);
                
                if (pozoriste == null)
                    return BadRequest("Ne postoji to pozoriste!");
                var predstava = Context.Predstave.Find(IDPredstava);
                if (predstava == null)
                    return BadRequest("Ne postoji ta predstava!");
                var scena=  Context.Scene.Find(IDScena);
                if (scena == null)
                    return BadRequest("Ne postoji ta scena!");
                var datum = Datum;

                

                var predstavaZaProveru = Context.Predstave.Where(p=> p==predstava)
                                            .Include(p => p.Pozoriste)
                                            .Where(p => p.Pozoriste == pozoriste)
                                            .FirstOrDefault();
                if (predstavaZaProveru == null)
                {
                    return BadRequest("Izabrana predstava ne pripada tom pozoristu");
                }
                
                var scenaZaProveru = Context.Scene.Where(p=> p==scena)
                                            .Include(p => p.Pozoriste)
                                            .Where(p => p.Pozoriste == pozoriste)
                                            .FirstOrDefault();
                if (scenaZaProveru == null)
                {
                    return BadRequest("Izabrana scena ne pripada tom pozoristu");
                }

                var izvodjenjeZaProveru = Context.Izvodjenja.Where(p => DateTime.Compare(p.Datum.Date,datum.Date)==0)
                                            .Include(p => p.Scena)
                                            .Where(p => p.Scena == scena)
                                            .FirstOrDefault();
                if (izvodjenjeZaProveru != null)
                {
                    return BadRequest("Izabrana scena je vec zauzeta tog dana!");
                }

                Izvodjenje i = new Izvodjenje
                {
                    
                    Predstava = predstava,
                    Pozoriste = pozoriste,
                    Scena= scena,
                    Datum=datum
                };
                Context.Izvodjenja.Add(i);
               
               
                await Context.SaveChangesAsync();
               
                return Ok("Uspesno dodato izvodjenje na drugi nacin!");
            }
            catch(Exception e)
            {
                return BadRequest("Doslo je do greske:" + e.Message);
            }
        }



    }
}