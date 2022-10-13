<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TPCarrito.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="mt-5">
        <h1>Listado de productos</h1>
        <div class="row d-flex">
        
            <asp:Repeater ID="RepeaterListado" runat="server">
                <ItemTemplate>
                    <div class="col-3">
                        <div class="card" style="width: 18rem;">
                            <img src="<%#Eval("UrlImagen") %>" class="card-img-top" alt="<%#Eval("NombreArticulo") %>">
                            <div class="card-body">
                                <h5 class="card-title"> <%#Eval("NombreArticulo") %> </h5>
                                <p class="card-text"> <%#Eval("Descripcion") %> </p>
                                <div class="text-center">
                                    <a href="Default.aspx?id="<%#Eval("Id") %>"></a>
                                    <asp:Button ComandName=nombreArticulo ComandArgument='<%#Eval("Id") %>' OnClick ="btnAceptar_Click" cssclass=" btn btn-primary" ID="btnAgregar" runat="server" Text="Agregar al carrito" />
                                        
                                </div>
                               
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
           </div>
    </div>
</asp:Content>
