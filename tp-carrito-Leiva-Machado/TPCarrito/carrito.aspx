<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="TPCarrito.Carrito" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div class="my-3 mvh-90">
     <div class="row d-flex px-2 justify-content-around">
         <div class="col-3-md text-center">
             <h1>Carrito de productos</h1>
         </div>
         <div class="col-3-md d-flex  align-items-center">    
            <asp:Label cssclass="input-group-text mostrar-precio mx-1" ID="lbPrecio" runat="server" Text="Total a pagar"></asp:Label>
            <asp:TextBox ID="txtPrecio" runat="server" cssclass="form-control mostrar-precio"></asp:TextBox>
            <asp:Label ID="lbMensajeCarrito" runat="server" Text="No se han agregado articulos al carrito."></asp:Label>
        </div>
     </div>
        <div class="row d-flex justify-content-center">
            <asp:Repeater ID="articulosSeleccionados" runat="server">
                <ItemTemplate>
                    <div class="col-3-md m-3">
                        <div class="card" style="width: 18rem;">
                            <img src="<%#Eval("UrlImagen") %>" class="card-img-top" alt="<%#Eval("NombreArticulo") %>" onerror="setDefaultImage(this);">
                            <div class="card-body">
                                <h5 class="card-title"> <%#Eval("NombreArticulo") %> </h5>
                                <p class="card-text"> <%#Eval("Descripcion") %> </p>
                                <p class="card-text"> Precio: $<%#Eval("Precio") %> </p>
                                <div class="text-center">
                                    <a href="Carrito.aspx?id="<%#Eval("Id") %>"></a>
                                    <asp:Button CommandName=idArticulo CommandArgument='<%#Eval("Id") %>' OnClick ="btnEliminar_Click" cssclass=" btn btn-danger" ID="btnEliminar" runat="server" Text="Eliminar" />  
                                </div>                   
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
           </div>
     </div>
<%--    </div>--%>
    
    <!--<div class="col-3">-->
    <!--<div class="card" ID="divPrecio" style="width: 18rem;">-->
<%--    <div class="row my-3">
          <div class="input-group mb-3 px-3">
            <asp:Label cssclass="input-group-text" ID="lbPrecio" runat="server" Text="Total a pagar"></asp:Label>
            <div class="form-floating">
            <asp:TextBox ID="txtPrecio" runat="server" cssclass="form-control"></asp:TextBox>
            <asp:Label ID="lbMensajeCarrito" runat="server" Text="No se han agregado articulos al carrito."></asp:Label>
            </div>
          </div>
    </div>--%>
   

        
         
</asp:Content>
