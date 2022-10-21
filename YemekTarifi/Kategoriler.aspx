<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Kategoriler.aspx.cs" Inherits="YemekTarifi.Kategoriler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            color: #FF671E;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <div class="accordion accordion-flush" id="accordionFlushExample">
  <div class="accordion-item">
    <h2 class="accordion-header" id="flush-headingOne">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne" id="btn_1">
        <strong>Kategori Listesi</strong>
      </button>
    </h2>
    <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
        <asp:DataList ID="dlkategoriler" runat="server" DataKeyField="KategoriID" DataSourceID="dsKategoriler">
            <ItemTemplate>
                <div class="accordion-body">
                    <a href="KategoriDetayAdmin.aspx?ID=<%#Eval("KategoriID") %>"><%#Eval("KategoriAd") %></a>
                </div>
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="dsKategoriler" runat="server" ConnectionString="<%$ ConnectionStrings:Dbo_YemekTarifiConnectionString %>" SelectCommand="SELECT * FROM [Tbl_Kategoriler]"></asp:SqlDataSource>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="flush-headingTwo">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
        <strong>Kategori Ekleme</strong>
      </button>
    </h2>
    <div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
      <div class="accordion-body">
          <table class="table">
  <tbody>
    <tr>
      <td class="auto-style1">Kategori Adı</td>
      <td>
          <asp:TextBox ID="txt_kategoriadı" CssClass="form-control" runat="server"></asp:TextBox>

      </td>
    </tr>
    <tr>
      <td class="auto-style1">Kategori Fotoğrafı</td>
      <td>
          <asp:FileUpload ID="FileUpload1" runat="server" />

      </td>
    </tr>
      <tr>
          <td></td>
          <td>
              <asp:Button ID="btn_kategoriekle" CssClass="btn btn-primary" runat="server" Text="Kategori Ekle" OnClick="btn_kategoriekle_Click"/>
          </td>
      </tr>
  </tbody>
</table>
      </div>
    </div>
  </div>
</div>

     <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
