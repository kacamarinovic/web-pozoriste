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
    public class PozoristeController : ControllerBase
    {
        public PozoristeContext Context { get; set; }

        public PozoristeController(PozoristeContext context)
        {
           Context = context;
        }
        [Route("PrikaziPozorista")]
        [HttpGet]
        public async Task<ActionResult> PrikaziPozorista()
        {
            return Ok(await Context.Pozorista.Select( p => new {Id = p.ID, Naziv = p.Naziv}).ToListAsync());
        }

        [Route("PreuzetiPozorista")]
        [HttpGet]
        public async Task<ActionResult> PreuzmiSvaPozorista()
        {
            try
            {
                var pozorista = await Context.Pozorista
                .Select(p =>
                new
                {
                    ID = p.ID,
                    Naziv = p.Naziv,
                    BrojScena = p.BrojScena,
                    Predstave = p.Predstave.Select( r =>
                        new
                        {
                            NazivPredstave = r.Naziv,
                            Reditelj = r.Reditelj

                        }               
                     )
                }).ToListAsync();
                return Ok(pozorista);
            }
            catch(Exception e)
            {
                return BadRequest("Doslo je do greske:" + e.Message);
            }
        }

        [Route("PreuzetiPredstave/{PozoristeID}")]
        [HttpGet]
        public async Task<ActionResult> PreuzmiPredstave(int PozoristeID)
        {
            if(PozoristeID <= 0)
            {
                return BadRequest("Nepostojece pozoriste!");
            }
            try
            {
                var pozoriste = Context.Pozorista.Where(p=>p.ID == PozoristeID).FirstOrDefault();
                if (pozoriste == null)
                    return BadRequest("Ne postoji to pozoriste!");
                var predstave = await Context.Predstave
                .Where(pr => pr.Pozoriste == pozoriste)
                .Select(p =>
                new
                {
                    ID = p.ID,
                    Naziv = p.Naziv,
                    Reditelj = p.Reditelj,
                    Zanr = p.Zanr,
                    GodinaPremijere= p.GodinaPremijere                    
                    
                }).ToListAsync();
                return Ok(predstave);
            }
            catch(Exception e)
            {
                return BadRequest("Doslo je do greske:" + e.Message);
            }
        }

        [Route("PreuzetiScene/{PozoristeID}")]
        [HttpGet]
        public async Task<ActionResult> PreuzmiScene(int PozoristeID)
        {
            if(PozoristeID <= 0)
            {
                return BadRequest("Nepostojece pozoriste!");
            }
            try
            {
                var pozoriste = Context.Pozorista.Where(p=>p.ID == PozoristeID).FirstOrDefault();
                if (pozoriste == null)
                    return BadRequest("Ne postoji to pozoriste!");
                var scene = await Context.Scene
                .Where(pr => pr.Pozoriste == pozoriste)
                .Select(p =>
                new
                {
                    ID = p.ID,
                    Naziv = p.Naziv                   
                    
                }).ToListAsync();
                return Ok(scene);
            }
            catch(Exception e)
            {
                return BadRequest("Doslo je do greske:" + e.Message);
            }
        }

               
        
    }
}
