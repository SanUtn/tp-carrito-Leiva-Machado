<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TPCarrito.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="my-3">
        <div class="text-center">
            <h1>Listado de productos</h1>
        </div>
        
        <div class="row d-flex justify-content-center px-3 my-3">
            <div class="col-3-md m-3 minimo-input">
                <asp:DropDownList ID="ddlCampo" runat="server" OnSelectedIndexChanged="ddlCampo_SelectedIndexChanged" AutoPostBack="true" CssClass="form-control"></asp:DropDownList>
            </div>
            <div class="col-3-md m-3 minimo-input">
                <asp:DropDownList ID="ddlCriterio" runat="server" CssClass="form-control">
                   <asp:ListItem Text="Criterio" Value=""  />
                </asp:DropDownList>
            </div>
            <div class="col-3-md m-3 minimo-input">
                <asp:TextBox ID="txtBusqueda" runat="server" placeholder="Ingrese el valor a buscar..." CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-3-md m-3">
                <asp:Button AutoPostBack="false" CssClass=" btn btn-success" ID="btnBusqueda" runat="server" Text="Buscar" OnClick="btnBusqueda_Click" />
            </div>

        </div>

        <div class="row d-flex justify-content-center">
            <asp:Repeater ID="RepeaterListado" runat="server">
                <ItemTemplate>
                    <div class="col-3-md m-3 d-flex align-items-stretch">
                        <div class="card" style="width: 18rem;">
                            <img src="<%#Eval("UrlImagen") %>" class="card-img-top" alt="<%#Eval("NombreArticulo") %>" onerror="setDefaultImage(this);">
                            <div class="card-body d-flex flex-column">
                                <h5 class="card-title"><%#Eval("NombreArticulo") %> </h5>
                                <p class="card-text"><%#Eval("Descripcion") %> </p>
                                <p class="card-text">$<%#Eval("Precio") %> </p>
                                <div class="text-center">
                                    <asp:Button AutoPostBack="false" CommandName="idArticulo" CommandArgument='<%#Eval("Id") %>' OnClick="btnAceptar_Click" CssClass=" btn btn-primary" ID="btnAgregar" runat="server" Text="Agregar al carrito" />
                                </div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>
