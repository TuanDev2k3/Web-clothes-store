using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace baicuoiki.Data.Migrations
{
    /// <inheritdoc />
    public partial class KhoVLock : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "ImageUrl",
                table: "SanPham");

            migrationBuilder.DropColumn(
                name: "Price",
                table: "SanPham");

            migrationBuilder.AlterColumn<string>(
                name: "Description",
                table: "SanPham",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "",
                oldClrType: typeof(string),
                oldType: "nvarchar(max)",
                oldNullable: true);

            migrationBuilder.AddColumn<double>(
                name: "QuantityInStock",
                table: "Product",
                type: "float",
                nullable: false,
                defaultValue: 0.0);

            migrationBuilder.AddColumn<bool>(
                name: "Lock",
                table: "AspNetUsers",
                type: "bit",
                nullable: true);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "QuantityInStock",
                table: "Product");

            migrationBuilder.DropColumn(
                name: "Lock",
                table: "AspNetUsers");

            migrationBuilder.AlterColumn<string>(
                name: "Description",
                table: "SanPham",
                type: "nvarchar(max)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AddColumn<string>(
                name: "ImageUrl",
                table: "SanPham",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<double>(
                name: "Price",
                table: "SanPham",
                type: "float",
                nullable: false,
                defaultValue: 0.0);
        }
    }
}
