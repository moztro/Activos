using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Activos.Enums;

namespace Activos.Modelo
{
    public class Almacen : BaseBO
    {
        public virtual Rubro Rubro { get; set; }
        public virtual List<Activo> Activos { get; set; }

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

    }
}