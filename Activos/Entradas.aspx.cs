using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using NHibernate;
using Activos.Utils;
using Activos.Modelo;
using Activos.Enums;
using Activos.Services;

namespace Activos
{
    public partial class Entradas : System.Web.UI.Page
    {
        ActivoServices activoService = new ActivoServices();
        CatalogosServices catalogoService = new CatalogosServices();
        private Activo activo;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                cargarCombos();
            //session.Save(new Activo(1,"Lapices mirado No. 2"));

            //var results = session.CreateQuery("FROM Activo a WHERE a.Id=1").SetMaxResults(10).List<Activo>();

            /*var results2 = (from a in session.QueryOver<Activo>()
                            where a.Id == 1
                            select a)
                            .Take(10)
                            .List();*/

            /*foreach (Activo a in results)
            {                
                txtActivo.Text = a.Id
                    + " " + a.Descripcion
                    + " " + a.Existencia
                    + " " + a.Precio;
            }*/
        }

        private void cargarCombos()
        {
            List<Almacen> almacenes = catalogoService.getListadoAlmacenes();
            ddlAlmacen.DataSource = almacenes;
            ddlAlmacen.DataValueField = "Id";
            ddlAlmacen.DataTextField = "Descripcion";
            ddlAlmacen.DataBind();
        }

        private Activo getUIData()
        {
            activo = new Activo();

            int id = Convert.ToInt32(lblActivoId.Text);
            if (id != 0)
                activo = activoService.findById(id);
            
            activo.Descripcion = txtConcepto.Text;
            activo.Precio = Convert.ToDouble(txtPrecio.Text);
            activo.Existencia += Convert.ToInt32(txtCantidad.Text);
            activo.Almacen = new Almacen();
            activo.Almacen.Id = Convert.ToInt32(ddlAlmacen.SelectedValue);

            return activo;
        }

        private void setUIData(Activo activo)
        {
            lblActivoId.Text = activo.Id.ToString();
            txtConcepto.Text = activo.Descripcion;
            txtPrecio.Text = activo.Precio.ToString();
            txtCantidad.Text = activo.Existencia.ToString();
            ddlAlmacen.SelectedValue = activo.Almacen.Id.ToString();
        }

        private void saveOrUpdate()
        {
            activoService.saveOrUpdate(getUIData());
        }

        private Activo findById(int id)
        {
            //activo = new Activo();
            //activo = (Activo)session.CreateQuery("FROM Activo a WHERE a.Id="+id+"").SetMaxResults(1).UniqueResult();
            return activoService.findById(id);
        }
        protected void btnGuardar_Command(object sender, CommandEventArgs e)
        {
            try
            {
                saveOrUpdate();
            }
            catch (Exception ex)
            {
                lblError.Text = ex.Message + "\n" + ex.StackTrace;                
            }
        }

        protected void btnBuscar_Command(object sender, CommandEventArgs e)
        {
            try
            {
                int id = Convert.ToInt32(txtBuscar.Text);
                setUIData(findById(id));
            }
            catch (Exception ex)
            {
                lblError.Text = ex.Message + "\n" + ex.StackTrace;
            }
        }
    }
}