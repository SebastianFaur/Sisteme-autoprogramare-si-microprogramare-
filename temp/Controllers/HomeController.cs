using temp.Data;
using temp.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Diagnostics;


namespace temp.Controllers
{
    public class HomeController : Controller
    {
        private readonly AppDbContext _context;

        // Conectãm baza de date prin constructor
        public HomeController(AppDbContext context)
        {
            _context = context;
        }

        // Aceastã metodã se ruleazã când accesezi pagina principalã (localhost)
        public async Task<IActionResult> Index()
        {
            // Citim toate datele din tabela SensorData, ordonate descrescãtor (cele mai noi sus)
            var dateSenzori = await _context.SensorData
                                            .OrderByDescending(s => s.Timestamp)
                                            .ToListAsync();

            // Trimitem lista cãtre pagina vizualã (View)
            return View(dateSenzori);
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
