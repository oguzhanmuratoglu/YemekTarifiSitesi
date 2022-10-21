<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="KategoriDetayAdmin.aspx.cs" Inherits="YemekTarifi.KategoriDetayAdmin" %>
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
          <div class="accordion-body" style="background-color:#fff">
              <br />
          <table class="table">
  <tbody>
    <tr>
      <td class="auto-style1">Kategori Adı</td>
      <td>
          <asp:TextBox ID="txt_kategoriadi" CssClass="form-control" runat="server"></asp:TextBox>

      </td>
    </tr>

    <tr>
      <td class="auto-style1">Kategori Fotoğrafı</td>
      <td>
          <asp:FileUpload ID="FileUpload2" runat="server" />

      </td>
    </tr>
      <tr>
          <td></td>
          <td>
              <asp:Button ID="btn_kategoridegistir" CssClass="btn btn-primary" runat="server" Text="Kategori Güncelle" OnClick="btn_kategoridegistir_Click" /> &nbsp &nbsp
              <asp:Button ID="btn_kategorisil" runat="server" CssClass="btn btn-danger" Text="Kategoriyi Sil" OnClick="btn_kategorisil_Click"/>
          </td>
      </tr>
  </tbody>
</table>
              <br />
      </div>
     <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
