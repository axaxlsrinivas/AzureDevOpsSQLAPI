using AzureDevOps.APISQL.Business.DTO;
using AzureDevOps.APISQL.Business.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;

namespace AzureDevOps.APISQL.Web.APIControllers
{
    public class AccountSiteMasterController : ApiController
    {
        private IAccountSiteMasterService _service;
        public AccountSiteMasterController()
        {
            _service = new AccountSiteMasterService();
        }

        [HttpPost]
        public IHttpActionResult AccountSiteMasterData(AccountMasterDataRequest accountMasterDataRequest)
        {
            return Ok(_service.GenerateLoginResponse("NOT Required", accountMasterDataRequest.IsHandHeldNumberRequired, accountMasterDataRequest.AccountNumber, accountMasterDataRequest.SiteNumber));
        }
    }
}