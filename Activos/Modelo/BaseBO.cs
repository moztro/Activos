using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Activos.Modelo
{
    public class BaseBO
    {
        private int id;
        private String descripcion;

        public BaseBO() { }

        public BaseBO(int _id, String _descripcion)
        {
            this.Id = _id;
            this.Descripcion = _descripcion;
        }

        public int Id
        {
            get { return id; }
            set { this.id = value; }
        }

        public String Descripcion
        {
            get { return descripcion; }
            set { this.descripcion = value; }
        }
    }
}