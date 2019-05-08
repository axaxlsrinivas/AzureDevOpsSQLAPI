using AzureDevOps.APISQL.Business.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AzureDevOps.APISQL.Business.Services
{
    public interface IAccountSiteMasterService : IDisposable
    {
        APIResponse<AccountMasterResponse> GenerateLoginResponse(string jwt_token, bool isHandHeldNumberRequired, string accountId, string siteId);
    }
}
