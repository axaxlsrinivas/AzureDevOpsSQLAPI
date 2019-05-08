using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AzureDevOps.APISQL.Business.DTO
{
    public class APIResponse<T>
    {
        public T Data { get; set; }

        //public Error Error { get; set; }

        public APIStatus Status { get; set; }
    }
}
