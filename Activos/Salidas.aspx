<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Salidas.aspx.cs" Inherits="Activos.Salidas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">

<script type="text/javascript" src="sitersc/js/metodosAction.js"></script>

<script type="text/javascript">

    $(document).ready(function () {
        onLoadAlmacenes();
    });

    var pageUrl = '<%=ResolveUrl("~/Salidas.aspx")%>'
    function onLoadAlmacenes() {
        var control = $('#ddlAlmacen');
        var url = pageUrl + '/llenarAlmacenes';
        llenar(control, url);
    }

    function llenarActivos() {
        var id = $('#Almacen').val();
        var control = $('#Activos');
        var controlPadre = $('#Almacen');
        var url = '/Salidas/CargarActivos/' + parseInt(id);
        llenarEnCascada(control, controlPadre, url);
    }

</script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMenu" runat="server">
    <asp:Menu ID="MenuActivos" runat="server" Orientation="Horizontal" CssClass="menuAll">
    <StaticMenuItemStyle CssClass="menuAllItems" />  
        <Items>
            <asp:MenuItem Text="Entradas" NavigateUrl="~/Entradas.aspx" />            
            <asp:MenuItem Text="Salidas" Selected="true" />
            <asp:MenuItem Text="Consultas" NavigateUrl="~/Consultas.aspx" />
            <asp:MenuItem Text="Kardex" NavigateUrl="~/Kardex.aspx" />
            <asp:MenuItem Text="Configuración" NavigateUrl="~/Configuracion.aspx" />
        </Items>
    </asp:Menu>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

<div class="titulos">Salidas </div>

<table cellpadding="4" cellspacing="4">
    <tr>
        <td>Rubro</td>
        <td>
            <asp:DropDownList ID="ddlAlmacen" runat="server" CssClass="input_select" onchange="llenarActivos();">
            </asp:DropDownList>
        </td>
        <td>Concepto</td>
        <td>
            <asp:DropDownList ID="ddlConcepto" runat="server" CssClass="input_select">
                <asp:ListItem Value="1">Cartucho Tinta Canon</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>Cantidad</td>
        <td>
            <asp:TextBox ID="txtCantidad" runat="server" CssClass="input_text"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Dirección</td>
        <td>
            <asp:DropDownList ID="ddlDireccion" runat="server" CssClass="input_select">
                <asp:ListItem Value="1">DIAT</asp:ListItem>
            </asp:DropDownList>
        </td>  
        <td>Departamento</td>
        <td>
            <asp:DropDownList ID="ddlDepartemento" runat="server" CssClass="input_select">
                <asp:ListItem Value="1">Ninguno</asp:ListItem>
                <asp:ListItem>Informatica</asp:ListItem>
            </asp:DropDownList>
        </td> 
        <td>Subdepartamento</td>
        <td>
            <asp:DropDownList ID="ddlSubdepartamento" runat="server" CssClass="input_select">
                <asp:ListItem Value="1">Ninguno</asp:ListItem>
                <asp:ListItem Value="2">Desarrollo de Sistemas</asp:ListItem>
            </asp:DropDownList>
        </td>       
    </tr>
</table>
</asp:Content>

