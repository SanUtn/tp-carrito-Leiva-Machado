<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TPCarrito.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="mt-5">
        <h1>Listado de productos</h1>
        <div class="row d-flex">
            <%--   <%foreach (var articulo in listaArticulos)
                {%>
            <div class="col-6">
                <div class="card" style="width: 18rem;">
                    <img src="..." class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="#" class="btn btn-primary">Go somewhere</a>
                    </div>
                </div>
            </div>
            <%} %>--%>
            <asp:Repeater ID="RepeaterListado" runat="server">
                <ItemTemplate>
                    <div class="col-3">
                        <div class="card" style="width: 18rem;">
                            <img src="<%#Eval("UrlImagen") %>" class="card-img-top" alt="<%#Eval("NombreArticulo") %>">
                            <div class="card-body">
                                <h5 class="card-title"> <%#Eval("NombreArticulo") %> </h5>
                                <p class="card-text"> <%#Eval("Descripcion") %> </p>
                                <div class="text-center">
                                    <a href="#" class="btn btn-primary">
                                    <asp:Button OnClick ="btnAceptar_Click" cssclass=" btn btn-primary" ID="btnAgregar" runat="server" Text="Agregar al carrito" />
                                        </a>
                                </div>
                               
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
             <asp:DropDownList ID="DropDownList1" runat="server">
                
             </asp:DropDownList>
        </div>
    </div>
</asp:Content>
