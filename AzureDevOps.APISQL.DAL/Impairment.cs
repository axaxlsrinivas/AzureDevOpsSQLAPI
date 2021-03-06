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
    
    public partial class Impairment
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Impairment()
        {
            this.ImpairmentPrecaution = new HashSet<ImpairmentPrecaution>();
            this.ImpairmentMeasureMaster = new HashSet<ImpairmentMeasureMaster>();
        }
    
        public int Id { get; set; }
        public Nullable<int> ImpairmentMobileId { get; set; }
        public string AccountId { get; set; }
        public string SiteId { get; set; }
        public Nullable<bool> IsParent { get; set; }
        public Nullable<int> ParentImpairmentId { get; set; }
        public string WorkFlowStatus { get; set; }
        public Nullable<int> ImpairmentTypeId { get; set; }
        public Nullable<int> ImpairmentClassId { get; set; }
        public Nullable<int> ShutDownReasonId { get; set; }
        public string ImpairmentDescription { get; set; }
        public Nullable<System.DateTime> StartDateTime { get; set; }
        public Nullable<System.DateTime> EndDateTime { get; set; }
        public Nullable<System.DateTime> CloseDateTime { get; set; }
        public Nullable<bool> IsDeleted { get; set; }
    
        public virtual ImpairmentTypeMaster ImpairmentTypeMaster { get; set; }
        public virtual ImpairmentClassMaster ImpairmentClassMaster { get; set; }
        public virtual ShutDownReasonMaster ShutDownReasonMaster { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ImpairmentPrecaution> ImpairmentPrecaution { get; set; }
        public virtual ReporterDetail ReporterDetail { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ImpairmentMeasureMaster> ImpairmentMeasureMaster { get; set; }
    }
}
