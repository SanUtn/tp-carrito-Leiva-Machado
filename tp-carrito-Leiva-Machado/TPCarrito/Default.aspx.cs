using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using Dominio;
using Helpers;
using Negocio;

namespace TPCarrito
{
    public partial class Default : System.Web.UI.Page
    {
        public List<Articulo> listaArticulos { get; set; }
        private MetodosCompartidos helper = new MetodosCompartidos();

        protected void Page_Load(object sender, EventArgs e)
        {
        
            ArticuloNegocio negocio = new ArticuloNegocio();
            listaArticulos = negocio.listarArticulo();
            
            if (!IsPostBack)
            {
                RepeaterListado.DataSource = listaArticulos;
                RepeaterListado.DataBind();

                cargarCampo();

            }
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            Articulo obj = new Articulo();
            List<Articulo> listaCarrito = new List<Articulo>();
                
           string capturarValor = ((Button)sender).CommandArgument;
            
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

            Response.Redirect(Request.RawUrl);
        }

        private void cargarCampo()
        {
            ddlCampo.Items.Add("Codigo");
            ddlCampo.Items.Add("Nombre");
            ddlCampo.Items.Add("Marca");
            ddlCampo.Items.Add("Categoria");
            ddlCampo.Items.Add("Precio");
        }

        protected void ddlCampo_SelectedIndexChanged(object sender, EventArgs e)
        {
            string opcion = ddlCampo.SelectedItem.ToString();
            if (opcion == "Precio")
            {
                ddlCriterio.Items.Clear();
                ddlCriterio.Items.Add("Mayor a");
                ddlCriterio.Items.Add("Menor a");
                ddlCriterio.Items.Add("Igual a");
            }
            else
            {
                ddlCriterio.Items.Clear();
                ddlCriterio.Items.Add("Comienza con");
                ddlCriterio.Items.Add("Termina con");
                ddlCriterio.Items.Add("Contiene");
            }
        }


        private bool validarFiltro()
        {
            if (ddlCampo.SelectedIndex < 0)
            {
                return true;
            }
            if (ddlCriterio.SelectedIndex < 0)
            {
                return true;
            }

            if (ddlCampo.SelectedItem.ToString() == "Precio")
            {
                if (string.IsNullOrEmpty(txtBusqueda.Text))
                {
                    return true;
                }
                if (!(helper.soloNumeros(txtBusqueda.Text)))
                {
                    return true;
                }
            }
            else
            {
                if (string.IsNullOrEmpty(txtBusqueda.Text))
                {
                    return true;
                }
            }
            return false;
        }

        protected void btnBusqueda_Click(object sender, EventArgs e)
        {
            ArticuloNegocio negocio = new ArticuloNegocio();
            List<Articulo> listaArticulosEncontrados;

            try
            {
                if (validarFiltro()) { return; }
                string campo = ddlCampo.SelectedItem.ToString();
                string criterio = ddlCriterio.SelectedItem.ToString();
                string filtro = txtBusqueda.Text;
                listaArticulosEncontrados = negocio.filtrar(campo, criterio, filtro);
                RepeaterListado.DataSource = listaArticulosEncontrados;
                RepeaterListado.DataBind();
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
    }


}