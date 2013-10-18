using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Activos.Modelo
{
    public class Activo : BaseBO
    {
        public int Existencia { get; set; }
        public double Precio { get; set; }
        public Almacen Almacen { get; set; }

        public Activo() { }

        public Activo(int _id, string _descripcion) : base(_id, _descripcion) { }

        public Activo(int _existencia)
        {
            this.Existencia = _existencia;
        }

        public Activo(int _id, string _descripcion, int _existencia) : base(_id, _descripcion)
        {
            this.Existencia = _existencia;
        }
    }
}