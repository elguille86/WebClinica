namespace WebClinica.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Clinicas
    {
        [Key]
        [StringLength(20)]
        public string cod_cli { get; set; }

        [StringLength(250)]
        public string nom_cli { get; set; }

        [StringLength(250)]
        public string des_cli { get; set; }

        [StringLength(250)]
        public string dir_cli { get; set; }

        public DateTime? fec_Reg { get; set; }

        [StringLength(200)]
        public string tel_cli { get; set; }

        [StringLength(50)]
        public string Lat_cli { get; set; }

        [StringLength(50)]
        public string Log_cli { get; set; }

        [StringLength(3)]
        public string Est_cli { get; set; }
    }
}
