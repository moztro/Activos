<%@ Page Title="Entrada de activos" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" 
CodeBehind="Entradas.aspx.cs" Inherits="Activos.Entradas" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="cphHead">
    <title>Sistema de E/S de Activos</title>
</asp:Content>
<asp:Content ID="MenuContent" runat="server" ContentPlaceHolderID="cphMenu">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <table>
            <tr>
                <td colspan="2"><b>Formulario de activos</b></td>
            </tr>
            <tr>
                <td colspan="2" align="right">
                    <asp:TextBox ID="txtBuscar" runat="server" Width="80px" />
                    <asp:ImageButton ID="btnBuscar" runat="server" 
                        ImageUrl="~/sitersc/img/btnSearch.png" oncommand="btnBuscar_Command" />
                </td>
            </tr>
            <tr>
                <asp:Label ID="lblActivoId" runat="server" Visible="true" Text="0" />
            </tr>
            <tr>
                <td>Concepto</td>
                <td><asp:TextBox ID="txtConcepto" runat="server" /></td>
            </tr>
            <tr>
                <td>Precio</td>
                <td><asp:TextBox ID="txtPrecio" runat="server" /></td>
            </tr>
            <tr>
                <td>Cantidad</td>
                <td><asp:TextBox ID="txtCantidad" runat="server" /></td>
            </tr>
            <tr>
                <td>Almacén</td>
                <td><asp:DropDownList ID="ddlAlmacen" runat="server" /></td>
            </tr>
            <tr>
                <td colspan="2" align="right">
                    <asp:Button ID="btnGuardar" runat="server" Text="Guardar" 
                        oncommand="btnGuardar_Command" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="lblError" runat="server" ForeColor="Red" />
                </td>
            </tr>
        </table>
</asp:Content>
