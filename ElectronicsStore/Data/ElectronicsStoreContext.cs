using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using ElectronicsStore.Models;

namespace ElectronicsStore.Data
{
    public class ElectronicsStoreContext : DbContext
    {
        public ElectronicsStoreContext (DbContextOptions<ElectronicsStoreContext> options)
            : base(options)
        {
        }

        public DbSet<ElectronicsStore.Models.Category> Category { get; set; } = default!;

        public DbSet<ElectronicsStore.Models.Product>? Product { get; set; }

        public DbSet<ElectronicsStore.Models.User>? User { get; set; }
    }
}
