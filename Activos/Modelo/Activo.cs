using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Activos.Modelo
{
    public class Activo : BaseBO
    {
        private int existencia;
        private double precio;
        private Almacen almacen;

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

        public int Existencia
        {
            get { return existencia; }
            set { this.existencia = value; }
        }

        public double Precio
        {
            get { return precio; }
            set { this.precio = value; }
        }

        public Almacen Almacen
        {
            get { return almacen; }
            set { this.almacen = value; }
        }
    }
}