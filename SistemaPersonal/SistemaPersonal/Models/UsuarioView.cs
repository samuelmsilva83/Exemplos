using System.Web;

namespace SistemaPersonal.Models
{
    public class UsuarioView
    {

        public Usuario Usuario { get; set; }

        public HttpPostedFileBase Foto { get; set; }
    }
}