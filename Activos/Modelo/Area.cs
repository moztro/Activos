using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Activos.Enums;

namespace Activos.Modelo
{
    public class Area : BaseBO
    {
        public virtual Area SuperArea { get; set; }
        public virtual NivelArea NivelArea { get; set; }

        public Area() { }

        public Area(int _id, String _descripcion) : base(_id, _descripcion) { }

        public Area(Area _superArea)
        {
            this.SuperArea = _superArea;

        }

        public Area(Area _superArea, NivelArea _nivelArea)
        {
            this.SuperArea = _superArea;
            this.NivelArea = _nivelArea;
        }

        public Area(int _id, String _descripcion, Area _superArea, NivelArea _nivelArea)
            : base(_id, _descripcion) 
        {
            this.SuperArea = _superArea;
            this.NivelArea = _nivelArea;
        }
    }
}