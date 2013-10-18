using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Activos.Enums;

namespace Activos.Modelo
{
    public class Area : BaseBO
    {
        public Area SubArea { get; set; }
        public NivelArea NivelArea { get; set; }

        public Area() { }

        public Area(int _id, String _descripcion) : base(_id, _descripcion) { }

        public Area(Area _subArea)
        {
            this.SubArea = _subArea;

        }

        public Area(Area _subArea, NivelArea _nivelArea)
        {
            this.SubArea = _subArea;
            this.NivelArea = _nivelArea;
        }

        public Area(int _id, String _descripcion, Area _subArea, NivelArea _nivelArea)
            : base(_id, _descripcion) 
        {
            this.SubArea = _subArea;
            this.NivelArea = _nivelArea;
        }
    }
}