namespace WebClinica.Models
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class ModelClinica : DbContext
    {
        public ModelClinica()
            :  base("name=DefaultConnection")
        {
        }

        public virtual DbSet<Clinicas> Clinicas { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Clinicas>()
                .Property(e => e.cod_cli)
                .IsUnicode(false);

            modelBuilder.Entity<Clinicas>()
                .Property(e => e.nom_cli)
                .IsUnicode(false);

            modelBuilder.Entity<Clinicas>()
                .Property(e => e.des_cli)
                .IsUnicode(false);

            modelBuilder.Entity<Clinicas>()
                .Property(e => e.dir_cli)
                .IsUnicode(false);

            modelBuilder.Entity<Clinicas>()
                .Property(e => e.tel_cli)
                .IsUnicode(false);

            modelBuilder.Entity<Clinicas>()
                .Property(e => e.Lat_cli)
                .IsUnicode(false);

            modelBuilder.Entity<Clinicas>()
                .Property(e => e.Log_cli)
                .IsUnicode(false);

            modelBuilder.Entity<Clinicas>()
                .Property(e => e.Est_cli)
                .IsUnicode(false);
        }
    }
}
