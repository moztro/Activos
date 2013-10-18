using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Activos.Modelo
{
    public class ActivoAsignado : Activo
    {
        public int CantidadAsignada { get; set; }
        public Area Area { get; set; }
    }
}