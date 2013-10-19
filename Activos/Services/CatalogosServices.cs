using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Activos.Modelo;
using Activos.DAO;

namespace Activos.Services
{
    public class CatalogosServices
    {
        public List<Almacen> getListadoAlmacenes()
        {
            return AlmacenDAO.getInstance().getList();
        }
    }
}