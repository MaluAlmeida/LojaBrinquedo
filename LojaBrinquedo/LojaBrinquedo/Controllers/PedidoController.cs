using Microsoft.AspNetCore.Mvc;

namespace LojaBrinquedo.Controllers
{
    public class PedidoController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
