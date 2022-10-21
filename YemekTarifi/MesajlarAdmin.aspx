<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="MesajlarAdmin.aspx.cs" Inherits="YemekTarifi.MesajlarAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
                    <strong>Mesaj Listesi</strong>
                </button>
            </h2>
            <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
                <asp:DataList ID="dlMesajlar" runat="server" DataKeyField="MesajID" DataSourceID="dsMesajlar">
                    <ItemTemplate>
                        <div class="accordion-body">
                            <a href="MesajDetayAdmin.aspx?ID=<%#Eval("MesajID") %>"><%#Eval("MesajGonderen") %></a>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="dsMesajlar" runat="server" ConnectionString="<%$ ConnectionStrings:Dbo_YemekTarifiConnectionString %>" SelectCommand="SELECT * FROM [Tbl_Mesajlar]"></asp:SqlDataSource>
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
