<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YorumlarAdmin.aspx.cs" Inherits="YemekTarifi.YorumlarAdmin" %>
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
        <strong>Onaylı Yorum Listesi</strong>
      </button>
    </h2>
    <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
        <asp:DataList ID="dlYorumlar" runat="server" DataKeyField="YorumID" DataSourceID="dsYorumlar">
            <ItemTemplate>
                <div class="accordion-body">
                     <a href="YorumDetayAdmin.aspx?ID=<%#Eval("YorumID") %>"><%#Eval("YorumAdSoyad") %></a>
                    </div>
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="dsYorumlar" runat="server" ConnectionString="<%$ ConnectionStrings:Dbo_YemekTarifiConnectionString %>" SelectCommand="SELECT * FROM [Tbl_Yorumlar] WHERE ([YorumOnay] = @YorumOnay)">
            <SelectParameters>
                <asp:Parameter DefaultValue="True" Name="YorumOnay" Type="Boolean" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="flush-headingTwo">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
        <strong>Onaysız Yorum Listesi</strong>
      </button>
    </h2>
    <div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
        <asp:DataList ID="dlYorumlar2" runat="server" DataKeyField="YorumID" DataSourceID="dsYorumlar2">
            <ItemTemplate>
                <div class="accordion-body">
                <a href="YorumDetayAdmin.aspx?ID=<%#Eval("YorumID") %>"><%#Eval("YorumAdSoyad") %></a>
                    </div>
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="dsYorumlar2" runat="server" ConnectionString="<%$ ConnectionStrings:Dbo_YemekTarifiConnectionString %>" SelectCommand="SELECT * FROM [Tbl_Yorumlar] WHERE ([YorumOnay] = @YorumOnay)">
            <SelectParameters>
                <asp:Parameter DefaultValue="False" Name="YorumOnay" Type="Boolean" />
            </SelectParameters>
        </asp:SqlDataSource>
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
