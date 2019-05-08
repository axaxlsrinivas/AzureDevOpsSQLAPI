using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AzureDevOps.APISQL.Business.DTO
{
    public class AccountMasterDataRequest
    {
        [Required]
        public string AccountNumber { get; set; }
        [Required]
        public string SiteNumber { get; set; }
        [Required]
        public bool IsHandHeldNumberRequired { get; set; }
    }
}
