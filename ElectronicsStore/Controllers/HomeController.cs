using ElectronicsStore.Data;
using ElectronicsStore.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Diagnostics;

namespace ElectronicsStore.Controllers
{
	public class HomeController : Controller
	{
		private readonly ElectronicsStoreContext _context;

		public HomeController(ElectronicsStoreContext context)
		{
			_context = context;
		}

		public IActionResult Index()
		{
			return View(_context.Product.Include(p => p.Category).ToList());
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