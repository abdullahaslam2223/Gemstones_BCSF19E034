//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Gemstones_BCSF19E034
{
    using System;
    using System.Collections.Generic;
    
    public partial class tbl_stone_shapes
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public tbl_stone_shapes()
        {
            this.tbl_products_stone = new HashSet<tbl_products_stone>();
        }
    
        public int shape_id { get; set; }
        public string shape_name { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tbl_products_stone> tbl_products_stone { get; set; }
    }
}