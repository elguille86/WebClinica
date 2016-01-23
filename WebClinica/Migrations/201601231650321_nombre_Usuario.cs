namespace WebClinica.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class nombre_Usuario : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.AspNetUsers", "nombres", c => c.String());
        }
        
        public override void Down()
        {
            DropColumn("dbo.AspNetUsers", "nombres");
        }
    }
}
