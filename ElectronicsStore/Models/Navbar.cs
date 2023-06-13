
using ElectronicsStore.Data;
using Microsoft.AspNetCore.Mvc;

namespace ElectronicsStore.Models
{
	public class Navbar : ViewComponent
	{
		private readonly ElectronicsStoreContext _context;

		public Navbar(ElectronicsStoreContext context)
		{
			_context = context;
		}
		public IViewComponentResult Invoke()
		{
			return View(_context.Category.ToList());
		}

	}
}
