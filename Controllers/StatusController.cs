using Microsoft.AspNetCore.Mvc;

namespace Emissor.Controllers
{
    [Route("api/status")]
    [ApiController]
    public class StatusController : ControllerBase
    {
        [HttpGet]
        public ObjectResult Get()
        {
            return Ok("status ok");
        }
    }
}
