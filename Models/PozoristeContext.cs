using Microsoft.EntityFrameworkCore;

namespace Models{

    public class PozoristeContext : DbContext
    {
        public DbSet<Pozoriste> Pozorista { get; set; }
        public DbSet<Glumac> Glumci { get; set; }
        public DbSet<Predstava> Predstave { get; set; }
        public DbSet<Scena> Scene { get; set; }
        public DbSet<Izvodjenje> Izvodjenja { get; set; }
        public DbSet<Uloga> Uloge { get; set; }

        public PozoristeContext(DbContextOptions options) : base (options)
        {

        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
            modelBuilder.Entity<Predstava>()
                        .HasMany<Uloga>(p => p.Uloge)
                        .WithOne(p => p.Predstava);
        }
    }
}