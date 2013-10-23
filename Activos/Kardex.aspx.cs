using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Activos
{
    public partial class Kardex : System.Web.UI.Page
    {
        DataTable tabla = new DataTable();

        protected void Page_Load(object sender, EventArgs e)
        {

            tabla.Columns.Add("concepto");
            tabla.Columns.Add("remFac");
            tabla.Columns.Add("invIni");
            tabla.Columns.Add("costoIni");
            tabla.Columns.Add("dev");
            tabla.Columns.Add("compras");
            tabla.Columns.Add("preciounit");
            tabla.Columns.Add("iva");
            tabla.Columns.Add("costoUnit");
            tabla.Columns.Add("total");
            tabla.Columns.Add("promedio");
            tabla.Columns.Add("prog");
            tabla.Columns.Add("vales");
            tabla.Columns.Add("salidas");
            tabla.Columns.Add("invFinal");
            tabla.Columns.Add("costInvFinal");

            tabla.Rows.Add("1", "1", "1", "1", "1", "1", "1", "1", "1", "1", "1", "1", "1", "1", "1", "1");

            gvRegistros.DataSource = tabla;
            gvRegistros.DataBind();
        }
    }
}