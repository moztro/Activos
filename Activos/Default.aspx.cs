using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Activos.Utils;
using NHibernate;
using Activos.Modelo;

namespace Activos
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ISession session = NHConnection.Session;
            //session.Save(new Activo(1,"Lapices mirado No. 2"));

            var results = session.CreateQuery("FROM Activo a WHERE a.Id=1").SetMaxResults(10).List<Activo>();

            /*var results2 = (from a in session.QueryOver<Activo>()
                            where a.Id == 1
                            select a)
                            .Take(10)
                            .List();*/

            foreach (Activo a in results)
            {
                txtActivo.Text = a.Id
                    + " " + a.Descripcion
                    + " " + a.Existencia
                    + " " + a.Precio;
            }

        }
    }
}
