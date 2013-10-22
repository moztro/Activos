<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Salidas.aspx.cs" Inherits="Activos.Salidas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMenu" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
<table cellpadding="4" cellspacing="4">
    <tr>
        <td>Rubro</td>
        <td>
            <asp:DropDownList ID="ddlRubro" runat="server" CssClass="input_select">
                <asp:ListItem Value="1">Computo</asp:ListItem>
                <asp:ListItem Value="2">Limpieza</asp:ListItem>
                <asp:ListItem Value="3">Fotografia</asp:ListItem>
                <asp:ListItem Value="1">Medico</asp:ListItem>
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

