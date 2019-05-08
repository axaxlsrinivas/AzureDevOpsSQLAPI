using AzureDevOps.APISQL.Business.DTO;
using AzureDevOps.APISQL.DAL;
using AzureDevOps.APISQL.DAL.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AzureDevOps.APISQL.Business.Services
{
    public class AccountSiteMasterService : IAccountSiteMasterService
    {
        private UnitOfWork _unitOfWork;

        public AccountSiteMasterService()
        {
            _unitOfWork = new UnitOfWork();
        }

        public APIResponse<AccountMasterResponse> GenerateLoginResponse(string jwt_token, bool isHandHeldNumberRequired, string accountId, string siteId)
        {
            APIResponse<AccountMasterResponse> response = new APIResponse<AccountMasterResponse>();

            AccountSiteMaster loginDBData = null;
            AccountSiteMaster accountSiteMaster = _unitOfWork.AccountSiteMasterRepository.Get(x => x.AccountId == accountId && x.SiteId == siteId).FirstOrDefault();
            loginDBData = accountSiteMaster;

            response.Data = ValidateLoginResponseData(jwt_token, isHandHeldNumberRequired, loginDBData);
            response.Status = GetAPIStatus(0, "Success");

            return response;
        }

        private static AccountMasterResponse ValidateLoginResponseData(string jwt_token, bool isHandHeldNumberRequired, AccountSiteMaster loginDBData)
        {
            AccountMasterResponse loginResponse = new AccountMasterResponse();
            loginResponse.CompanyName = loginDBData.CompanyName;
            loginResponse.CompanyAddress = loginDBData.CompanyAddress;
            loginResponse.SiteName = loginDBData.SiteName;
            loginResponse.LPItemName = loginDBData.CompanyName;
            loginResponse.Region = loginDBData.Region;
            loginResponse.City = loginDBData.City;
            loginResponse.State = loginDBData.State;
            loginResponse.Country = loginDBData.Country;
            loginResponse.PostalCode = loginDBData.PostalCode;

            // Valid JWT token
            loginResponse.JWTToken = jwt_token;

            // Handheld flag is true need to last updated id from the database [Required for mobile]
            /*if (isHandHeldNumberRequired)
                loginResponse.HandheldId = GenerateHandHeldNumber();*/

            return loginResponse;
        }

        public APIStatus GetAPIStatus(int statusCode, string statusMessage)
        {
            APIStatus apiStatus = new APIStatus()
            {
                StatusCode = statusCode,
                StatusMessage = statusMessage,
            };

            return apiStatus;
        }

        #region IDisposable Support
        private bool disposedValue = false; // To detect redundant calls
        protected virtual void Dispose(bool disposing)
        {
            if (!disposedValue)
            {
                if (disposing)
                {
                    // TODO: dispose managed state (managed objects).
                    _unitOfWork.Dispose();
                }

                // TODO: free unmanaged resources (unmanaged objects) and override a finalizer below.
                // TODO: set large fields to null.

                disposedValue = true;
            }
        }

        // TODO: override a finalizer only if Dispose(bool disposing) above has code to free unmanaged resources.
        // ~HotWorkService() {
        //   // Do not change this code. Put cleanup code in Dispose(bool disposing) above.
        //   Dispose(false);
        // }

        // This code added to correctly implement the disposable pattern.
        public void Dispose()
        {
            // Do not change this code. Put cleanup code in Dispose(bool disposing) above.
            Dispose(true);
            // TODO: uncomment the following line if the finalizer is overridden above.
            // GC.SuppressFinalize(this);
        }
        #endregion
    }
}
