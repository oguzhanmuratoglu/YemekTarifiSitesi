<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="KategoriDetay.aspx.cs" Inherits="YemekTarifi.KategoriDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />

    <div class="text-center">


    <asp:DataList ID="DataList1" runat="server" DataKeyField="KategoriID" DataSourceID="SqlDataSource1" CellPadding="0" HorizontalAlign="Center">
        <ItemTemplate>
            <div class="container bootstrap snippets bootdeys">
                <h2><%#Eval("KategoriAd") %></h2>
                <span class="center-line"></span>
            </div>
        </ItemTemplate>
    </asp:DataList>



    </div>
    <br />
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Dbo_YemekTarifiConnectionString %>" SelectCommand="SELECT * FROM [Tbl_Kategoriler] WHERE ([KategoriID] = @KategoriID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="KategoriID" QueryStringField="ID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>



     <div class="row" style="position:center; text-align:center; height:auto;">
          <div class="col-md-10 col-md-offset-1">
                    <div class="row">
    <asp:DataList ID="DataList2" runat="server" DataKeyField="YemekID" DataSourceID="SqlDataSource2" CellPadding="50" HorizontalAlign="Center"  RepeatColumns="3" BorderColor="White">
        <ItemTemplate>
           
               
                        <div class="col-sm-4 margin40" style="width:400px; height:400px;">
                            <div class="item-img-wrap ">
                                <img src="<%#Eval("YemekFoto") %>" class="img-fluid" style="width:400px; height:230px;" alt="workimg">
                                <div class="item-img-overlay">
                                    <a href="YemekDetay.aspx?ID=<%#Eval("YemekID") %>">
                                        <span></span>
                                    </a>
                                </div>
                            </div>
                            <div class="work-desc">
                                <h3><a href="YemekDetay.aspx?ID=<%#Eval("YemekID") %>">
                                    <%#Eval("YemekAd") %>
                                </a></h3>
                                <span><%#Eval("YemekMalzemeKısa") %></span>
                            </div>
                            <!--work desc-->
                    
                    <!--speakers col end-->

                </div>
         

        </ItemTemplate>
    </asp:DataList>
            </div>
                  </div>
                    </div>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Dbo_YemekTarifiConnectionString %>" SelectCommand="SELECT * FROM [Tbl_Yemekler] WHERE ([KategoriID] = @KategoriID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="KategoriID" QueryStringField="ID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
