using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Activos.Modelo;
using Activos.DAO;

namespace Activos.Services
{
    public class ActivoServices
    {
        public bool saveOrUpdate(Activo activo)
        {
            return ActivoDAO.getInstance().saveOrUpdate(activo);
        }

        public Activo findById(int id)
        {
            return ActivoDAO.getInstance().get(id);
        }
    }
}