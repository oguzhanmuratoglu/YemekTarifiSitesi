<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="GununYemegiAdmin.aspx.cs" Inherits="YemekTarifi.GununYemegiAdmin" %>

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
                    <strong>Yemek Listesi</strong>
                </button>
            </h2>
            <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
                <asp:DataList ID="dlYemekler" runat="server" DataKeyField="YemekID" DataSourceID="dsYemekler">
                    <ItemTemplate>
                        <div class="accordion-body">
                            <a href="GununYemegiDetayAdmin.aspx?ID=<%#Eval("YemekID") %>"><%#Eval("YemekAd") %></a>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="dsYemekler" runat="server" ConnectionString="<%$ ConnectionStrings:Dbo_YemekTarifiConnectionString %>" SelectCommand="SELECT * FROM [Tbl_Yemekler]"></asp:SqlDataSource>
            </div>
        </div>
        <div class="accordion-item">
            <h2 class="accordion-header" id="flush-headingTwo">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
                    <strong>Günün Yemeğini Sıfırla</strong>
                </button>
            </h2>
            <div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
                <div class="accordion-body">
                    <table class="table">
                        <tbody>
                            <tr>
                                <td>
                                    <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" Text="Günün Başlangıçlarını Sıfırla" OnClick="Button1_Click" />
                                </td>
                                <td>
                                    <asp:Button ID="Button2" CssClass="btn btn-warning" runat="server" Text="Günün Kahvaltılarını Sıfırla" OnClick="Button2_Click" />

                                </td>
                                <td>
                                    <asp:Button ID="Button3" CssClass="btn btn-success" runat="server" Text="Günün Öğle Yemeklerini Sfırla" OnClick="Button3_Click" />

                                </td>
                                <td>
                                    <asp:Button ID="Button4" CssClass="btn btn-info" runat="server" Text="Günün Akşam Yemeklerini Sıfırla" OnClick="Button4_Click" />

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
