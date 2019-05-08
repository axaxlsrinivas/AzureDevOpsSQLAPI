using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AzureDevOps.APISQL.DAL.Repository
{
    public class UnitOfWork : IDisposable
    {
        private CLPDUMPEntities context = new CLPDUMPEntities();

        private GenericRepository<AccountSiteMaster> _accountSiteMasterRepository;

        #region DB Repository
        public GenericRepository<AccountSiteMaster> AccountSiteMasterRepository
        {
            get
            {
                if( this._accountSiteMasterRepository == null )
                {
                    this._accountSiteMasterRepository = new GenericRepository<AccountSiteMaster>(context);
                }

                return _accountSiteMasterRepository;
            }
        }
        #endregion

        public void Save()
        {
            context.SaveChanges();
        }

        private bool disposed = false;

        protected virtual void Dispose(bool disposing)
        {
            if (!this.disposed)
            {
                if (disposing)
                {
                    context.Dispose();
                }
            }
            this.disposed = true;
        }

        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }
    }
}
