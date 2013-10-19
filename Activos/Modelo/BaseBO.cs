using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Activos.Modelo
{
    public class BaseBO
    {
        public virtual int Id { get; set; }
        public virtual String Descripcion { get; set; }

        public BaseBO() { }

        public BaseBO(int _id, String _descripcion)
        {
            this.Id = _id;
            this.Descripcion = _descripcion;
        }

        public override bool Equals(object obj)
        {
            BaseBO bo = obj as BaseBO;
            if (bo == null)
                return false;
            if (Id == 0 && bo.Id == 0){
                return (object)this == obj;
            }else{
                return Id == bo.Id;
            }
        }

        public override int GetHashCode()
        {
            if(Id==0)
                return base.GetHashCode();
            string strRepresentation = 
                System.Reflection.MethodBase.GetCurrentMethod()
                    .DeclaringType.FullName + "#" + Id.ToString();
            return strRepresentation.GetHashCode();
        }

    }
}