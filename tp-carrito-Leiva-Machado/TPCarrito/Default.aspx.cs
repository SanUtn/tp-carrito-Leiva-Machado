﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dominio;
using Negocio;

namespace TPCarrito
{
    public partial class Default : System.Web.UI.Page
    {
        public List<Articulo> listaArticulos { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["listaArticulos"] == null)
            {
                ArticuloNegocio negocio = new ArticuloNegocio();
                listaArticulos = negocio.listarArticulo();
                Session.Add("listaArticulos", listaArticulos);
            }

            if (!IsPostBack)
            {
                RepeaterListado.DataSource = listaArticulos;
                RepeaterListado.DataBind();
            }
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            //Articulo art = new Articulo();
            //DropDownList1.SelectedItem.Value;
            String capturarValor = ((Button)sender).CommandArgument;
        }
    }


}