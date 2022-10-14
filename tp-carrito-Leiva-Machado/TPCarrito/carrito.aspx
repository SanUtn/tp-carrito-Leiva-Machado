<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="TPCarrito.Carrito" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div class="mt-5">
        <h1>Carrito de productos</h1>
        <div class="row d-flex">
        
            <asp:Repeater ID="articulosSeleccionados" runat="server">
                <ItemTemplate>
                    <div class="col-3">
                        <div class="card" style="width: 18rem;">
                            <img src="<%#Eval("UrlImagen") %>" class="card-img-top" alt="<%#Eval("NombreArticulo") %>">
                            <div class="card-body">
                                <h5 class="card-title"> <%#Eval("NombreArticulo") %> </h5>
                                <p class="card-text"> <%#Eval("Descripcion") %> </p>
                                <p class="card-text"> $<%#Eval("Precio") %> </p>
                                <div class="text-center">
                                    <a href="Carrito.aspx?id="<%#Eval("Id") %>"></a>
                                    <asp:Button CommandName=idArticulo CommandArgument='<%#Eval("Id") %>' OnClick ="btnEliminar_Click" cssclass=" btn btn-primary" ID="btnEliminar" runat="server" Text="Eliminar del carrito" />
                                        
                                </div>
                               
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
           </div>
    </div>
    
    <!--<div class="col-3">-->
    <!--<div class="card" ID="divPrecio" style="width: 18rem;">-->
     <div class="input-group mb-3">
         <asp:Label cssclass="input-group-text" ID="lbPrecio" runat="server" Text="Total a pagar"></asp:Label>
    <div class="form-floating">
    
    <asp:TextBox ID="txtPrecio" runat="server" cssclass="form-control"></asp:TextBox>
    </div>
          </div>
        
         
</asp:Content>
