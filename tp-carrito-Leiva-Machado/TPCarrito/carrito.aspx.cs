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
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["listaArt"] != null )
            {
                if (!IsPostBack)
                {
                    articulosSeleccionados.DataSource = Session["listaArt"];
                    articulosSeleccionados.DataBind();
                }
            }
            
               
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {

        }

        
      

    }
}