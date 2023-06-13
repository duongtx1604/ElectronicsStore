using ElectronicsStore.Data;
using Microsoft.AspNetCore.Mvc;

namespace ElectronicsStore.Models
{
    public class Sidebar : ViewComponent
    {
        private readonly ElectronicsStoreContext _context;

        public Sidebar(ElectronicsStoreContext context)
        {
            _context = context;
        }
        public IViewComponentResult Invoke()
        {
            return View(_context.Category.ToList());
        }
    }
}
