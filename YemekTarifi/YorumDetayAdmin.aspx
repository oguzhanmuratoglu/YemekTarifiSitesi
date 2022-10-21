<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YorumDetayAdmin.aspx.cs" Inherits="YemekTarifi.YorumDetayAdmin" %>
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
                <th>YORUM YAPANIN</th> 
            <tbody>
                <tr>
                    <td class="auto-style1">Adı Soyadı</td>
                    <td>
                        <asp:TextBox ID="txt_yorumadi" CssClass="form-control" runat="server"></asp:TextBox>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Mail Adresi</td>
                    <td>
                        <asp:Label ID="lbl_mail" CssClass="form-control" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>

                <tr>
                    <td class="auto-style1">Yemek Yorumu</td>
                    <td>
                        <asp:TextBox ID="txt_icerik" runat="server" CssClass="form-control" Style="width:100%; height:100px;" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Yemek Adı</td>
                    <td>
                        <asp:Label ID="lbl_yemekad" CssClass="form-control" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btn_yorumonayla" CssClass="btn btn-primary" runat="server" Text="Yorumu Onayla" OnClick="btn_yorumonayla_Click" />
                        &nbsp &nbsp
                        <asp:Button ID="btn_yorumpasiflestir" CssClass="btn btn-warning" runat="server" Text="Yorumu Pasifleştir" OnClick="btn_yorumpasiflestir_Click"  />
                        &nbsp &nbsp
              <asp:Button ID="btn_yorumsil" runat="server" CssClass="btn btn-danger" Text="Yorumu Sil" OnClick="btn_yorumsil_Click" />
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
