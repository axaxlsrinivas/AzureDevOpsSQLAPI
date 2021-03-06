//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace AzureDevOps.APISQL.DAL
{
    using System;
    using System.Collections.Generic;
    
    public partial class Scope
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Scope()
        {
            this.ScopePerson = new HashSet<ScopePerson>();
            this.ScopeWorkOrder = new HashSet<ScopeWorkOrder>();
        }
    
        public int Id { get; set; }
        public Nullable<int> HotWorkId { get; set; }
        public string WorkDetail { get; set; }
        public string WorkLocation { get; set; }
        public string CompanyName { get; set; }
        public Nullable<System.DateTime> StartDateTime { get; set; }
        public Nullable<System.DateTime> EndDateTime { get; set; }
    
        public virtual HotWork HotWork { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ScopePerson> ScopePerson { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ScopeWorkOrder> ScopeWorkOrder { get; set; }
    }
}
