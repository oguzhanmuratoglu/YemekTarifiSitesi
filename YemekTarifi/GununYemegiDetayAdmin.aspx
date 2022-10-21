<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="GununYemegiDetayAdmin.aspx.cs" Inherits="YemekTarifi.GununYemegiDetayAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            color: #FF671E;
            width: 200px;
        }
        .auto-style2 {
            width: 240px;
            height: 219px;
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
                        <asp:Label ID="txt_yemekadi" CssClass="form-control" runat="server" Text="Label"></asp:Label>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Gerekli Malzemeler</td>
                    <td>
                        <asp:Label ID="txt_malzemeler" CssClass="form-control" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Gerekli Malzemeler Kısa</td>
                    <td>
                        <asp:Label ID="lbl_gerekli" CssClass="form-control" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Yemek Tarifi</td>
                    <td>
                        <asp:Label ID="txt_tarif" runat="server" CssClass="form-control"   Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Yemek Fotoğrafı</td>
                    <td>
                             <asp:Image ID="Image1" runat="server" />                             
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btn_baslangıc" CssClass="btn btn-primary" runat="server" Text="Günün Başlangıç Yemeği Seç" OnClick="btn_baslangıc_Click" />
                         &nbsp &nbsp &nbsp &nbsp
                        <asp:Button ID="btn_kahvaltı" runat="server" CssClass="btn btn-warning" Text="Günün Kahvaltı Yemeği Seç" OnClick="btn_kahvaltı_Click" />  

                        &nbsp &nbsp &nbsp &nbsp
                        <asp:Button ID="Button1" CssClass="btn btn-success" runat="server" Text="Günün Öğle Yemeği Seç" OnClick="Button1_Click" />
                   &nbsp &nbsp &nbsp &nbsp
                        <asp:Button ID="Button2" CssClass="btn btn-info" runat="server" Text="Günün Akşam Yemeği Seç" OnClick="Button2_Click" />
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
