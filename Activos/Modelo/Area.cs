using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Activos.Enums;

namespace Activos.Modelo
{
    public class Area : BaseBO
    {
        private Area subArea;
        private NivelArea nivelArea;

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

        public Area SubArea
        {
            get { return subArea; }
            set { this.subArea = value; }
        }

        public NivelArea NivelArea
        {
            get { return nivelArea; }
            set { this.nivelArea = value; }
        }
    }
}