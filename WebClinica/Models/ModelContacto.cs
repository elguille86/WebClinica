namespace WebClinica.Models
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class ModelContacto : DbContext
    {
        public ModelContacto()
            : base("name=DefaultConnection")
        {
        }

        public virtual DbSet<TbContacto> TbContacto { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<TbContacto>()
                .Property(e => e.nom_cont)
                .IsUnicode(false);

            modelBuilder.Entity<TbContacto>()
                .Property(e => e.emi_cont)
                .IsUnicode(false);

            modelBuilder.Entity<TbContacto>()
                .Property(e => e.tel_cont)
                .IsUnicode(false);

            modelBuilder.Entity<TbContacto>()
                .Property(e => e.asu_cont)
                .IsUnicode(false);

            modelBuilder.Entity<TbContacto>()
                .Property(e => e.men_cont)
                .IsUnicode(false);
        }
    }
}
