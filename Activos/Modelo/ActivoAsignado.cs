using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Activos.Modelo
{
    public class ActivoAsignado : Activo
    {
        private int cantidadAsignada;
        private Area area;

        public int CantidadAsignada
        {
            get { return cantidadAsignada; }
            set { this.cantidadAsignada = value; }
        }

        public Area Area
        {
            get { return area; }
            set { this.area = value; }
        }
    }
}