<%@ Page Title="Panel de Configuración" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" 
CodeBehind="Configuracion.aspx.cs" Inherits="Activos.Administración" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="cphHead">
    <title>Sistema de E/S de Activos</title>
</asp:Content>
<asp:Content ID="MenuContent" runat="server" ContentPlaceHolderID="cphMenu">
    <asp:Menu ID="MenuActivos" runat="server" Orientation="Horizontal" CssClass="menuAll">
    <StaticMenuItemStyle CssClass="menuAllItems" />  
        <Items>
            <asp:MenuItem Text="Entradas" NavigateUrl="~/Entradas.aspx" />            
            <asp:MenuItem Text="Salidas" NavigateUrl="~/Salidas.aspx" />
            <asp:MenuItem Text="Consultas" NavigateUrl="~/Consultas.aspx" />
            <asp:MenuItem Text="Kardex" NavigateUrl="~/Kardex.aspx" />
            <asp:MenuItem Text="Configuración" Selected="true" />
        </Items>
    </asp:Menu>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
<div class="titulos">Panel de Configuración</div>
<table style="width:100%">
    <tr>
        <td><b>Configuración de Activo</b></td>
        <td><b>Configuración Contable</b></td>
    </tr>
    <tr>
        <td>
            <table>
                <tr>
                    <td colspan="2" align="right">
                        Folio
                        <asp:TextBox ID="txtFolio" runat="server" style="width:50px" CssClass="input_text" />
                        <asp:ImageButton ID="btnBuscar" runat="server" ImageUrl="~/sitersc/img/btnSearch.png" />
                   </td>
                </tr>
                <tr>
                    <td>Concepto</td>
                    <td><asp:TextBox ID="txtConcepto" runat="server" CssClass="input_text" /></td>
                </tr>
                <tr>
                    <td>Precio</td>
                    <td><asp:TextBox ID="txtPrecio" runat="server" CssClass="input_text" /></td>
                </tr> 
                <tr>
                    <td colspan="2" align="right">
                        <asp:Button ID="btnGuardar" runat="server" Text="Guardar" CssClass="btn_metro btn_metro_save" />
                    </td>
                </tr>
            </table>
        </td>
        <td>
            <table>
                <tr>
                    <td>I. V. A.</td>
                    <td><asp:TextBox ID="txtIVA" runat="server" CssClass="input_text" /></td>
                </tr> 
                <tr>
                    <td colspan="2" align="right">
                        <asp:Button ID="btnGuardarContable" runat="server" Text="Guardar" CssClass="btn_metro btn_metro_save" />
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</asp:Content>