namespace WebClinica.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("TbContacto")]
    public partial class TbContacto
    {
        [Key]
        public int cod_cont { get; set; }

        [Required(ErrorMessage = "Se Requiere el Nombre")]
        [StringLength(500)]
        public string nom_cont { get; set; }

        [StringLength(500)]
        [Required(ErrorMessage = "Se Requiere el E-mail")]
        public string emi_cont { get; set; }

        [StringLength(50)]
        public string tel_cont { get; set; }

        [StringLength(500)]
        public string asu_cont { get; set; }

        [StringLength(500)]
        public string men_cont { get; set; }

        public DateTime? fecreg { get; set; }
    }
}
