<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YemeklerAdmin.aspx.cs" Inherits="YemekTarifi.YemeklerAdmin" %>

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
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
                    <strong>Yemek Listesi</strong>
                </button>
            </h2>
            <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
                <asp:DataList ID="DataList1" runat="server" DataKeyField="YemekID" DataSourceID="dsYem">
                    <ItemTemplate>
                        <div class="accordion-body">
                                <a href="YemekDetayAdmin.aspx?ID=<%#Eval("YemekID") %>"><%#Eval("YemekAd") %></a>
                             </div>
                    </ItemTemplate>
                </asp:DataList>
                        <asp:SqlDataSource ID="dsYem" runat="server" ConnectionString="<%$ ConnectionStrings:Dbo_YemekTarifiConnectionString %>" SelectCommand="SELECT * FROM [Tbl_Yemekler]"></asp:SqlDataSource>
                </div>
        </div>
        <div class="accordion-item">
            <h2 class="accordion-header" id="flush-headingTwo">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
                    <strong>Yemek Ekleme</strong>
                </button>
            </h2>
            <div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
                <div class="accordion-body">
                    <table class="table">
                        <tbody>
                            <tr>
                                <td class="auto-style1">Yemek Adı</td>
                                <td>
                                    <asp:TextBox ID="txt_yemekadı" CssClass="form-control" runat="server"></asp:TextBox>

                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style1">Gerekli Malzemeler</td>
                                <td>
                                    <asp:TextBox ID="txt_yemekmalzeme" CssClass="form-control" runat="server" Style="width:100%; height:100px;" TextMode="MultiLine" ></asp:TextBox>

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
                                    <asp:TextBox ID="txt_yemektarif" CssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>

                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style1">Yemek Fotoğrafı</td>
                                <td>
                                    <asp:FileUpload ID="FileUpload1" runat="server" />

                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style1">Yemek Tarif Videosu</td>
                                <td>
                                    <asp:TextBox ID="txt_video" CssClass="form-control" runat="server"></asp:TextBox>

                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style1">Yemek Kategorisini Seçiniz</td>

                                <td>
                                    <asp:DropDownList ID="DropDownList1" CssClass="btn btn-secondary dropdown-toggle" Style="background-color: #fff; color: black" runat="server" DataSourceID="SqlDataSource1" DataTextField="KategoriAd" DataValueField="KategoriID"></asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Dbo_YemekTarifiConnectionString %>" SelectCommand="SELECT [KategoriAd], [KategoriID] FROM [Tbl_Kategoriler]"></asp:SqlDataSource>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <asp:Button ID="btn_yemekekle" CssClass="btn btn-primary" runat="server" Text="Yemek Ekle" OnClick="btn_yemekekle_Click" />
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
    <br />
</asp:Content>
