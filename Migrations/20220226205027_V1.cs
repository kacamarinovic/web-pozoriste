using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace web_pozoriste.Migrations
{
    public partial class V1 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Glumac",
                columns: table => new
                {
                    ID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Ime = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    Prezime = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Glumac", x => x.ID);
                });

            migrationBuilder.CreateTable(
                name: "Pozoriste",
                columns: table => new
                {
                    ID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Naziv = table.Column<string>(type: "nvarchar(200)", maxLength: 200, nullable: false),
                    BrojScena = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Pozoriste", x => x.ID);
                });

            migrationBuilder.CreateTable(
                name: "Predstava",
                columns: table => new
                {
                    ID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Naziv = table.Column<string>(type: "nvarchar(200)", maxLength: 200, nullable: false),
                    Zanr = table.Column<string>(type: "nvarchar(20)", maxLength: 20, nullable: true),
                    GodinaPremijere = table.Column<int>(type: "int", nullable: false),
                    PozoristeID = table.Column<int>(type: "int", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Predstava", x => x.ID);
                    table.ForeignKey(
                        name: "FK_Predstava_Pozoriste_PozoristeID",
                        column: x => x.PozoristeID,
                        principalTable: "Pozoriste",
                        principalColumn: "ID",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "Scena",
                columns: table => new
                {
                    ID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    PozoristeID = table.Column<int>(type: "int", nullable: true),
                    Naziv = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Scena", x => x.ID);
                    table.ForeignKey(
                        name: "FK_Scena_Pozoriste_PozoristeID",
                        column: x => x.PozoristeID,
                        principalTable: "Pozoriste",
                        principalColumn: "ID",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "Uloga",
                columns: table => new
                {
                    ID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Lik = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    GlumacID = table.Column<int>(type: "int", nullable: true),
                    PredstavaID = table.Column<int>(type: "int", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Uloga", x => x.ID);
                    table.ForeignKey(
                        name: "FK_Uloga_Glumac_GlumacID",
                        column: x => x.GlumacID,
                        principalTable: "Glumac",
                        principalColumn: "ID",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_Uloga_Predstava_PredstavaID",
                        column: x => x.PredstavaID,
                        principalTable: "Predstava",
                        principalColumn: "ID",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "Izvodjenje",
                columns: table => new
                {
                    ID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    PredstavaID = table.Column<int>(type: "int", nullable: true),
                    Datum = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ScenaID = table.Column<int>(type: "int", nullable: true),
                    PozoristeID = table.Column<int>(type: "int", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Izvodjenje", x => x.ID);
                    table.ForeignKey(
                        name: "FK_Izvodjenje_Pozoriste_PozoristeID",
                        column: x => x.PozoristeID,
                        principalTable: "Pozoriste",
                        principalColumn: "ID",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_Izvodjenje_Predstava_PredstavaID",
                        column: x => x.PredstavaID,
                        principalTable: "Predstava",
                        principalColumn: "ID",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_Izvodjenje_Scena_ScenaID",
                        column: x => x.ScenaID,
                        principalTable: "Scena",
                        principalColumn: "ID",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateIndex(
                name: "IX_Izvodjenje_PozoristeID",
                table: "Izvodjenje",
                column: "PozoristeID");

            migrationBuilder.CreateIndex(
                name: "IX_Izvodjenje_PredstavaID",
                table: "Izvodjenje",
                column: "PredstavaID");

            migrationBuilder.CreateIndex(
                name: "IX_Izvodjenje_ScenaID",
                table: "Izvodjenje",
                column: "ScenaID");

            migrationBuilder.CreateIndex(
                name: "IX_Predstava_PozoristeID",
                table: "Predstava",
                column: "PozoristeID");

            migrationBuilder.CreateIndex(
                name: "IX_Scena_PozoristeID",
                table: "Scena",
                column: "PozoristeID");

            migrationBuilder.CreateIndex(
                name: "IX_Uloga_GlumacID",
                table: "Uloga",
                column: "GlumacID");

            migrationBuilder.CreateIndex(
                name: "IX_Uloga_PredstavaID",
                table: "Uloga",
                column: "PredstavaID");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Izvodjenje");

            migrationBuilder.DropTable(
                name: "Uloga");

            migrationBuilder.DropTable(
                name: "Scena");

            migrationBuilder.DropTable(
                name: "Glumac");

            migrationBuilder.DropTable(
                name: "Predstava");

            migrationBuilder.DropTable(
                name: "Pozoriste");
        }
    }
}
