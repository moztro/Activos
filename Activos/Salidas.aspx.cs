using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using Activos.Modelo;
using Activos.Services;

namespace Activos
{
    public partial class Salidas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static List<Almacen> llenarAlmacenes()
        {
            CatalogosServices catalogos = new CatalogosServices();
            return catalogos.getListadoAlmacenes();
        }
    }
}