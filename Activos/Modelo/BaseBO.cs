using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Activos.Modelo
{
    public class BaseBO
    {
        public int Id { get; set; }
        public String Descripcion { get; set; }

        public BaseBO() { }

        public BaseBO(int _id, String _descripcion)
        {
            this.Id = _id;
            this.Descripcion = _descripcion;
        }

    }
}