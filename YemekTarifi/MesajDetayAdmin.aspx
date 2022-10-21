<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="MesajDetayAdmin.aspx.cs" Inherits="YemekTarifi.MesajDetayAdmin" %>
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
            <th>Mesaj Gönderenin</th>
            <tbody>
                <tr>                  
                    <td class="auto-style1">Adı Soyadı</td>
                    <td>
                        <asp:Label ID="lbl_adi" CssClass="form-control" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Mail Adresi</td>
                    <td>
                        <asp:Label ID="lbl_mail" CssClass="form-control" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style1">Konu</td>
                    <td>
                        <asp:Label ID="lbl_konu" CssClass="form-control" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Mesajı</td>
                    <td>
                        <asp:Label ID="lbl_icerik" CssClass="form-control" Style="height:auto" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btn_mesajsil" runat="server" CssClass="btn btn-danger" Text="Mesajı Sil" OnClick="btn_mesajsil_Click" />

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
