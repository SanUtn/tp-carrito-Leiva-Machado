using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    public class Articulo
    {
        public int Id { get; set; }
        [DisplayName("Código")]
        public string CodArticulo { get; set; }

        [DisplayName("Nombre")]
        public string NombreArticulo { get; set; }

        [DisplayName("Descripción")]
        public string Descripcion { get; set; }

        [DisplayName("Marca")]
        public Marca MarcaArticulo { get; set; }

        [DisplayName("Categoría")]
        public Categoria CategoriaArticulo { get; set; }
        public string UrlImagen { get; set; }

        public decimal Precio { get; set; }

        public bool Activo { get; set; }

    }
}
