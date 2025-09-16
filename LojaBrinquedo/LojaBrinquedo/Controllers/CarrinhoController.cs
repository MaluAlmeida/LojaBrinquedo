using Microsoft.AspNetCore.Mvc;

namespace LojaBrinquedo.Controllers
{
    public class CarrinhoController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
