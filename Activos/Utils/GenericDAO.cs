using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using NHibernate;

namespace Activos.Utils
{
    public abstract class GenericDAO<T>
    {
        private ISession session = NHConnection.Session;
        
        public T get(int id)
        {
            return (T)session.Get<T>(id);
        }

        public List<T> getList(string entityName)
        {
            List<T> Tlist = new List<T>();
            var list = session.CreateQuery("FROM " + entityName + "").List<T>();
            foreach (T t in list)
                Tlist.Add(t);
            return Tlist;
        }

        public bool saveOrUpdate(T obj)
        {
            using (NHibernate.ITransaction transaction = session.BeginTransaction())
            {
                try
                {
                    session.SaveOrUpdate(obj);
                    session.Flush();
                    transaction.Commit();
                    return true;
                }
                catch
                {
                    transaction.Rollback();
                }
            }
            return false;
        }

        public ISession getSession(){
            return this.session;
        }
    }
}