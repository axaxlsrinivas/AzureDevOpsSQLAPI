using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AzureDevOps.APISQL.Business.DTO
{
    public class AccountMasterResponse
    {
        public string CompanyName { get; set; }
        public string CompanyAddress { get; set; }
        public string SiteName { get; set; }
        public string LPItemName { get; set; }
        public string Region { get; set; }
        public string City { get; set; }
        public string State { get; set; }
        public string Country { get; set; }
        public string PostalCode { get; set; }

        // * Secure token
        public string JWTToken { get; set; }

        // * HandheldId
        public int? HandheldId { get; set; }
    }
}
