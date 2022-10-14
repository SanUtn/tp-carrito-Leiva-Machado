using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using Dominio;
using Negocio;

namespace TPCarrito
{
    public partial class Default : System.Web.UI.Page
    {
        public List<Articulo> listaArticulos { get; set; }
        

        protected void Page_Load(object sender, EventArgs e)
        {
        
                ArticuloNegocio negocio = new ArticuloNegocio();
                listaArticulos = negocio.listarArticulo();
            

            if (!IsPostBack)
            {
                RepeaterListado.DataSource = listaArticulos;
                RepeaterListado.DataBind();
            }
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            Articulo obj = new Articulo();
            List<Articulo> listaCarrito = new List<Articulo>();
                
                String capturarValor = ((Button)sender).CommandArgument;
            
            foreach (var art in listaArticulos)
            {
                if (art.Id == int.Parse(capturarValor))
                {
                    obj = art;
 
                }
            }
            listaCarrito.Add(obj);
           
            if (Session["listaArt"] == null)
            {
                Session.Add("listaArt", listaCarrito);
            }
            else
            {
             ((List<Articulo>) Session["listaArt"]).Add(obj);
            
            }
        }
    }


}