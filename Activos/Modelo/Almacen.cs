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
        private List<Activo> activos = new List<Activo>();

        public Almacen() { }

        public Almacen(int _id, String _descripcion) : base(_id, _descripcion) { }

        public Almacen(int _id, String _descripcion, Rubro _rubro)
            : base(_id, _descripcion)
        {
            this.Rubro = _rubro;
        }

        public Almacen(Rubro _rubro)
        {
            this.Rubro = _rubro;
        }

        public Almacen(Rubro _rubro, List<Activo> _activos)
        {
            this.Rubro = _rubro;
            this.Activos = _activos;
        }

        public Rubro Rubro
        {
            get { return rubro; }
            set { this.rubro = value; }
        }

        public List<Activo> Activos
        {
            get { return activos; }
            set { this.activos = value; }
        }
    }
}