using Dominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TPCarrito
{
    public partial class Master : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["listaArt"] != null)
            {
                if (((List<Articulo>)Session["listaArt"]).Count() != 0)
                {
                    lbCarrito.Visible = true;
                    lbCarrito.Text = (((List<Articulo>)Session["listaArt"]).Count()).ToString();
                }
                else
                {
                    lbCarrito.Visible = true;
                }

            }



        }
    }
}