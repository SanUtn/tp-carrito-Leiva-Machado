using Dominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace TPCarrito
{
    public partial class Carrito : System.Web.UI.Page
    {
        public List<Articulo> listaCarrito { get; set; }
        public List<int> listaId { get; set; }
        public List<Articulo> listaFinal { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["listaId"] != null && Session["listaArticulos"] != null)
            {
                listaCarrito = (List<Articulo>)Session["listaArticulos"];
                listaId = (List<int>)Session["listaId"];
                articulosCarrito();

                if (!IsPostBack)
                {
                    articulosSeleccionados.DataSource = listaFinal;
                    articulosSeleccionados.DataBind();
                }
            }
            
               
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {

        }

        protected void articulosCarrito()
        {

            foreach (var art in listaCarrito)
            {
                foreach (var id in listaId)
                {
                    if (art.Id == id)
                    {
                        listaFinal.Add(art);
                    }
                }
            }
        }
      

    }
}