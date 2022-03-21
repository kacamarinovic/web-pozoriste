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
    public class PredstavaController : ControllerBase
    {
        public PozoristeContext Context { get; set; }

        public PredstavaController(PozoristeContext context)
        {
           Context = context;
        }

       
        [Route("PreuzmiUlogePredstave/{PredstavaID}")]
        [HttpGet]
        public async Task<ActionResult> PreuzmiUlogePredstave(int PredstavaID)
        {
            if(PredstavaID <= 0)
            {
                return BadRequest("Nepostojeca predstava!");
            }
            
            try
            {
                var predstava = Context.Predstave.Where(p => p.ID == PredstavaID).FirstOrDefault();
                var uloge = await Context.Uloge.Where(p => p.Predstava == predstava)
                .Select(u =>
                new
                {
                    Lik= u.Lik,
                    Glumac = u.Glumac.Ime + " " + u.Glumac.Prezime
                }
                )
                .ToListAsync();
                return Ok(uloge);
            }
            catch (Exception e)
            {
                return BadRequest(e.Message);
            } 
        }

        


    }

}