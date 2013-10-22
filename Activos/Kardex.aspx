<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Kardex.aspx.cs" Inherits="Activos.Kardex" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMenu" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

<div id="menuBusquedas" class="menu-color">
    <table cellpadding="4" cellspacing="4" width="%100">
        <tr>
            <td>Rubro</td>
            <td>
                <asp:DropDownList ID="ddlRubro" runat="server" CssClass="input_select">
                    <asp:ListItem Value="1">Computo</asp:ListItem>
                    <asp:ListItem Value="2">Limpieza</asp:ListItem>
                    <asp:ListItem Value="3">Medico</asp:ListItem>
                    <asp:ListItem Value="4">Fotografia</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <IMG src="sitersc/img/btnSearch.png">   
            </td>
        </tr>
    </table>
</div>

<div id="BandejaRegistros" class="panel-scroll">
         <asp:GridView ID="gvRegistros" runat="server" Width="100%" 
            AutoGenerateColumns="False"      
            gridLines="Horizontal" CssClass="gvClass" EmptyDataText="No hay registros que mostrar"> 
                            
        <AlternatingRowStyle CssClass="gv_AlternatingRowStyle"/>
        <HeaderStyle BackColor="White" ForeColor="#000"/>
            <Columns>
              
                <asp:BoundField HeaderText="Concepto" DataField="concepto" 
                    HeaderStyle-CssClass="gv_titulosColumnas" FooterText="a">           
                    <HeaderStyle CssClass="gv_titulosColumnas"></HeaderStyle>           
                </asp:BoundField> 

                <asp:BoundField HeaderText="REM. FAC." DataField="remFac" 
                    HeaderStyle-CssClass="gv_titulosColumnas" FooterText="a">           
                    <HeaderStyle CssClass="gv_titulosColumnas"></HeaderStyle>           
                </asp:BoundField> 
                      
                <asp:BoundField HeaderText="INV. INICIAL" DataField="invIni" HeaderStyle-CssClass="gv_titulosColumnas">          
                    <HeaderStyle CssClass="gv_titulosColumnas" ></HeaderStyle>           
                </asp:BoundField> 
             
                 <asp:BoundField HeaderText="COSTO INV. INICIAL" DataField="costoIni" HeaderStyle-CssClass="gv_titulosColumnas">           
                    <HeaderStyle CssClass="gv_titulosColumnas"></HeaderStyle>           
                </asp:BoundField>

                <asp:BoundField HeaderText="DEV." DataField="dev" HeaderStyle-CssClass="gv_titulosColumnas">           
                    <HeaderStyle CssClass="gv_titulosColumnas"></HeaderStyle>
                </asp:BoundField>

                <asp:BoundField HeaderText="COMPRAS." DataField="compras" HeaderStyle-CssClass="gv_titulosColumnas">           
                    <HeaderStyle CssClass="gv_titulosColumnas"></HeaderStyle>
                </asp:BoundField>

                <asp:BoundField HeaderText="PRECIO UNIT." DataField="preciounit" HeaderStyle-CssClass="gv_titulosColumnas">           
                    <HeaderStyle CssClass="gv_titulosColumnas"></HeaderStyle>
                </asp:BoundField>

                <asp:BoundField HeaderText="I.V.A." DataField="iva" HeaderStyle-CssClass="gv_titulosColumnas">           
                    <HeaderStyle CssClass="gv_titulosColumnas"></HeaderStyle>
                </asp:BoundField>

                <asp:BoundField HeaderText="COSTO UNIT." DataField="costoUnit" HeaderStyle-CssClass="gv_titulosColumnas">           
                    <HeaderStyle CssClass="gv_titulosColumnas"></HeaderStyle>
                </asp:BoundField>

                <asp:BoundField HeaderText="COSTO TOTAL." DataField="total" HeaderStyle-CssClass="gv_titulosColumnas">           
                    <HeaderStyle CssClass="gv_titulosColumnas"></HeaderStyle>
                </asp:BoundField>

                <asp:BoundField HeaderText="P.U. PROMEDIO" DataField="promedio" HeaderStyle-CssClass="gv_titulosColumnas">           
                    <HeaderStyle CssClass="gv_titulosColumnas"></HeaderStyle>
                </asp:BoundField>

                <asp:BoundField HeaderText="PROG" DataField="prog" HeaderStyle-CssClass="gv_titulosColumnas">           
                    <HeaderStyle CssClass="gv_titulosColumnas"></HeaderStyle>
                </asp:BoundField>

                <asp:BoundField HeaderText="VALES" DataField="vales" HeaderStyle-CssClass="gv_titulosColumnas">           
                    <HeaderStyle CssClass="gv_titulosColumnas"></HeaderStyle>
                </asp:BoundField>

                <asp:BoundField HeaderText="COSTO SALIDAS" DataField="salidas" HeaderStyle-CssClass="gv_titulosColumnas">           
                    <HeaderStyle CssClass="gv_titulosColumnas"></HeaderStyle>
                </asp:BoundField>

                <asp:BoundField HeaderText="INV. FINAL" DataField="invFinal" HeaderStyle-CssClass="gv_titulosColumnas">           
                    <HeaderStyle CssClass="gv_titulosColumnas"></HeaderStyle>
                </asp:BoundField>

                <asp:BoundField HeaderText="COSTO INV. FINAL" DataField="costInvFinal" HeaderStyle-CssClass="gv_titulosColumnas">           
                    <HeaderStyle CssClass="gv_titulosColumnas"></HeaderStyle>
                </asp:BoundField>

            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
