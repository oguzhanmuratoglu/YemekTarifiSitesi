<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YemekDetayAdmin.aspx.cs" Inherits="YemekTarifi.YemekDetayAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            color: #FF671E;
            width:200px;
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
    <div class="accordion-body" style="background-color: #fff">
        <br />
        <table class="table">
            <tbody>
                <tr>
                    <td class="auto-style1">Yemek Adı</td>
                    <td>
                        <asp:TextBox ID="txt_yemekadi" CssClass="form-control" runat="server"></asp:TextBox>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Gerekli Malzemeler</td>
                    <td>
                        <asp:TextBox ID="txt_malzemeler" CssClass="form-control" runat="server" Style="width:100%; height:100px;" TextMode="MultiLine" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Gerekli Malzemeler Kısa</td>
                    <td>
                        <asp:TextBox ID="txt_malzemekısa" CssClass="form-control" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Yemek Tarifi</td>
                    <td>
                        <asp:TextBox ID="txt_tarif" runat="server" CssClass="form-control" Style="width:100%; height:100px;" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Yemek Fotoğrafı</td>
                    <td>
                        <asp:Image ID="Image1" runat="server" Style="width:auto; height:auto;"/>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Yemek Tarif Videosu</td>
                    <td>
                        <asp:TextBox ID="txt_video" CssClass="form-control" runat="server"></asp:TextBox>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Yemek Fotoğrafı Değiştir</td>
                    <td>
                        <asp:FileUpload ID="FileUpload1"  runat="server" FileName=""/>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Yemek Kategorisini Seçiniz</td>

                    <td>
                        <asp:DropDownList ID="DDL_1" CssClass="btn btn-secondary dropdown-toggle" Style="background-color: #fff; color: black" runat="server" DataSourceID="SqlDataSource1" DataTextField="KategoriAd" DataValueField="KategoriID"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Dbo_YemekTarifiConnectionString %>" SelectCommand="SELECT [KategoriAd], [KategoriID] FROM [Tbl_Kategoriler]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btn_yemegiguncelle" CssClass="btn btn-primary" runat="server" Text="Yemeği Güncelle" OnClick="btn_yemegiguncelle_Click" />
                        &nbsp &nbsp
              <asp:Button ID="btn_yemegisil" runat="server" CssClass="btn btn-danger" Text="Yemeği Sil" OnClick="btn_yemegisil_Click" />
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
