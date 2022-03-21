using Microsoft.EntityFrameworkCore.Migrations;

namespace web_pozoriste.Migrations
{
    public partial class V2 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "Reditelj",
                table: "Predstava",
                type: "nvarchar(100)",
                maxLength: 100,
                nullable: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Reditelj",
                table: "Predstava");
        }
    }
}
