using Microsoft.AspNetCore.Mvc;

namespace LojaBrinquedo.Controllers
{
    public class ProdutoController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
