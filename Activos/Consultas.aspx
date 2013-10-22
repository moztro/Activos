<%@ Page Title="Consultas" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master"  
CodeBehind="Consultas.aspx.cs" Inherits="Activos.Consultas" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="cphHead">
    <title>Sistema de E/S de Activos</title>
</asp:Content>
<asp:Content ID="MenuContent" runat="server" ContentPlaceHolderID="cphMenu">
    <asp:Menu ID="MenuActivos" runat="server" Orientation="Horizontal" CssClass="menuAll">
        <StaticMenuItemStyle CssClass="menuAllItems" />  
        <Items>
            <asp:MenuItem Text="Entradas" NavigateUrl="~/Entradas.aspx" />
            <asp:MenuItem Text="Consultas" Selected="true" />
            <asp:MenuItem Text="Configuración" NavigateUrl="~/Configuracion.aspx" />
        </Items>
    </asp:Menu>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>Consultas</h2>

   <table>
       <tr>
        <td>Elegir Almacén</td>
        <td><asp:DropDownList ID="ddlAlmacenes" runat="server" style="width:auto;">
            <asp:ListItem Text="MÉDICO" Value="3" />
            <asp:ListItem Text="CÓMPUTO" Value="4" />
            <asp:ListItem Text="LIMPIEZA" Value="5" />
            <asp:ListItem Text="PAPELERÍA" Value="6" />
            <asp:ListItem Text="FOTOGRAFÍA" Value="7" />
        </asp:DropDownList></td>
       </tr>
       <tr>
        <td>
            Fecha Inicio
        </td>
        <td>
            <asp:TextBox ID="txtFechaInicio" runat="server" />
            <asp:CalendarExtender ID="ceFechaInicio" runat="server" TargetControlID="txtFechaInicio" />
            <asp:MaskedEditExtender ID="meeFechaInicio" runat="server" MaskType="Date" TargetControlID="txtFechaInicio" Mask="99/99/9999" />
        </td>
        <td>
            Fecha Fin
        </td>
        <td>
            <asp:TextBox ID="txtFechaFin" runat="server" />
            <asp:CalendarExtender ID="ceFechaFin" runat="server" TargetControlID="txtFechaFin" />
            <asp:MaskedEditExtender ID="meeFechaFin" runat="server" MaskType="Date" TargetControlID="txtFechaFin" Mask="99/99/9999" />
        </td>
       </tr>
       <tr>
        <td colspan="4" align="right">
            <asp:Button ID="btnConsultar" runat="server" Text="Consultar" CssClass="btn_metro btn_metro_search" />
        </td>
       </tr>
   </table>
   <table style="width:100%">
    <tr>
        <td style="width:80%">
            <asp:GridView ID="gvActivos" runat="server" 
                Style="width:100%; position:inherit;" align="center" AutoGenerateColumns="False"
            gridLines="Horizontal" CssClass="gvClass" 
                EmptyDataText="No hay registros que mostrar" DataSourceID="DataSourceTest">
            <AlternatingRowStyle CssClass="gv_AlternatingRowStyle"/>
                <Columns>
                    <asp:BoundField HeaderText="Descripcion" DataField="Descripcion" 
                        SortExpression="Descripcion" />
                    <asp:BoundField HeaderText="Existencia" DataField="Existencia" 
                        SortExpression="Existencia" />
                </Columns>
           </asp:GridView>
            <asp:SqlDataSource ID="DataSourceTest" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ActivosConnectionString %>" 
                SelectCommand="SELECT [BaseBO].[Descripcion],[Activo].[Existencia] FROM [Activo],[BaseBO] WHERE ([Activo].[AlmacenId] = @AlmacenId)
                AND ([Activo].[ActivoId]=[BaseBO].[Id])">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlAlmacenes" DefaultValue="3" 
                        Name="AlmacenId" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
        <td style="width:80%;vertical-align:middle;" align="center">
            <asp:ImageButton ID="btnReporteExistencias" runat="server" ToolTip="Reporte de Existencias" 
            ImageUrl="~/sitersc/img/stock.png" style="width:50px;height:50px;" />
            <br />
            <asp:ImageButton ID="btnReporteESCosteado" runat="server" ToolTip="Reporte de E/S Costeado"
            ImageUrl="~/sitersc/img/es.png" style="width:50px;height:50px;"/>
        </td>
    </tr>
   </table>
   
   
</asp:Content>
