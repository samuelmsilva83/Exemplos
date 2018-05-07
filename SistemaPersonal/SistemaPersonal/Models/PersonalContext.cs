using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.ModelConfiguration.Conventions;
using System.Linq;
using System.Web;

namespace SistemaPersonal.Models
{
    public class PersonalContext : DbContext
    {

        public PersonalContext() : base("DefaultConnection")
        {

        }

        protected override void Dispose(bool disposing)
        {
            base.Dispose(disposing);
        }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Conventions.Remove<OneToManyCascadeDeleteConvention>();
        }


        public System.Data.Entity.DbSet<SistemaPersonal.Models.Usuario> Usuarios { get; set; }

        public System.Data.Entity.DbSet<SistemaPersonal.Models.Grupos> Grupos { get; set; }

        public System.Data.Entity.DbSet<SistemaPersonal.Models.GruposDetalhes> GruposDetalhes { get; set; }
    }
}