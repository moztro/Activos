using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Activos.Enums;

namespace Activos.Modelo
{
    public class Almacen : BaseBO
    {
        private Rubro rubro;

        public Almacen() { }

        public Almacen(int _id, String _descripcion) : base(_id, _descripcion) { }

        public Almacen(int _id, String _descripcion, Rubro _rubro)
            : base(_id, _descripcion)
        {
            this.Rubro = _rubro;
        }

        public Rubro Rubro
        {
            get { return rubro; }
            set { this.rubro = value; }
        }
    }
}