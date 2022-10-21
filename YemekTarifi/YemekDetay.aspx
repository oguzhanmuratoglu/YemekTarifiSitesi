<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="YemekDetay.aspx.cs" Inherits="YemekTarifi.YemekDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            --bs-gutter-x: 1.5rem;
            --bs-gutter-y: 0;
            width: 100%;
            max-width: 1320px;
            margin-left: auto;
            margin-right: auto;
            padding-left: calc(var(--bs-gutter-x) * .5);
            padding-right: calc(var(--bs-gutter-x) * .5);
        }

        .auto-style2 {
            --bs-gutter-x: 1.5rem;
            --bs-gutter-y: 0;
            width: 100%;
            max-width: 1320px;
            margin-left: auto;
            margin-right: auto;
            padding-left: calc(var(--bs-gutter-x) * .5);
            padding-right: calc(var(--bs-gutter-x) * .5);
            background-color: #EEEEEE;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Header-->


    <asp:SqlDataSource ID="dsYemek" runat="server" ConnectionString="<%$ ConnectionStrings:Dbo_YemekTarifiConnectionString %>" SelectCommand="SELECT * FROM [Tbl_Yemekler] WHERE ([YemekID] = @YemekID)">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="0" Name="YemekID" QueryStringField="ID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:Repeater ID="rptYemek" runat="server" DataSourceID="dsYemek">
        <ItemTemplate>
            <section id="hero" class="hero d-flex align-items-center section-bg" style="background-color: #fff0e3">
                <div class="auto-style1">
                    <div class="row justify-content-between gy-5">
                        <div class="col-lg-5 order-2 order-lg-1 d-flex flex-column justify-content-center align-items-center align-items-lg-start text-center text-lg-start">
                            <h2 data-aos="fade-up"><%#Eval("YemekAd") %></h2>
                            <p data-aos="fade-up" data-aos-delay="100"></p>
                            <div class="d-flex" data-aos="fade-up" data-aos-delay="200">
                                <a href="YemekDetay.aspx?ID=<%#Eval("YemekID") %>#yorumlar" class="btn-book-a-table">Yorumları Gör</a>
                                <a href="<%#Eval("YemekVideo") %>" class="glightbox btn-watch-video d-flex align-items-center"><i class="bi bi-play-circle"></i><span>Tarifin Videosu</span></a>
                            </div>
                        </div>
                        <div class="col-lg-5 order-1 order-lg-2 text-center text-lg-start">
                            <img src="<%#Eval("YemekFoto") %>" class="img-fluid" style="border-radius:30px" alt="" data-aos="zoom-out" data-aos-delay="300">
                        </div>
                    </div>
                </div>
            </section>


            <br />
            <!-- Content section 1-->
            <section id="scroll" ">
                <div class="container px-5">
                    <div class="row gx-5 align-items-center">
                        <div class="col-lg-6 order-lg-2">
                            <div class="p-5">
                                <img class="img-fluid rounded-circle" style="height: 300px; width: 300px;" src="assets/img/01.jpg" alt="..." />
                            </div>
                        </div>
                        <div class="col-lg-6 order-lg-1">
                            <div class="p-5">
                                <h2 class="display-4">Gerekli Malzemeler</h2>
                                <p><%#Eval("YemekMalzeme") %></p>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Content section 2-->
            <section>
                <div class="container px-5">
                    <div class="row gx-5 align-items-center">
                        <div class="col-lg-6">
                            <div class="p-5">
                                <img class="img-fluid rounded-circle" style="height: 300px; width: 300px;" src="assets/img/02.jpg" alt="..." />
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="p-5">
                                <h2 class="display-4">Yemeğin Tarifi</h2>
                                <p><%#Eval("YemekTarif") %></p>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </ItemTemplate>
    </asp:Repeater>
    <asp:SqlDataSource ID="dsYorumlar" runat="server" ConnectionString="<%$ ConnectionStrings:Dbo_YemekTarifiConnectionString %>" SelectCommand="SELECT * FROM [Tbl_Yorumlar] WHERE (([YemekID] = @YemekID) AND ([YorumOnay] = @YorumOnay))">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="0" Name="YemekID" QueryStringField="ID" Type="Int32" />
            <asp:Parameter DefaultValue="True" Name="YorumOnay" Type="Boolean" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:Repeater ID="rptYorumlar" runat="server" DataSourceID="dsYorumlar">
        <ItemTemplate>

            <!-- ======= Testimonials Section ======= -->
            <section id="yorumlar" class="testimonials section-bg">
                <div class="container" data-aos="fade-up">

                    <div class="section-header">
                        <h2></h2>
                        <p><span>Yorumlar</span></p>
                    </div>

                    <div class="slides-1 swiper" data-aos="fade-up" data-aos-delay="100">
                        <div class="swiper-wrapper">

                            <div class="swiper-slide">
                                <div class="testimonial-item">
                                    <div class="row gy-4 justify-content-center">
                                        <div class="col-lg-6">
                                            <div class="testimonial-content">
                                                <p>
                                                    <i class="bi bi-quote quote-icon-left"></i><%#Eval("YorumIcerik") %><i class="bi bi-quote quote-icon-right"></i>
                                                </p>
                                                <h3><%#Eval("YorumAdSoyad") %></h3>
                                                <h4><%#Eval("YorumTarih") %></h4>
                                                <div class="stars">
                                                    <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-2 text-center">
                                            <img src="assets/img/03.png" class="img-fluid testimonial-img" alt="">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- End testimonial item -->
                        </div>
                        <div class="swiper-pagination"></div>
                    </div>

                </div>
            </section>
            <!-- End Testimonials Section -->

        </ItemTemplate>
    </asp:Repeater>

   
    <section id="yorumyap" class="book-a-table">
        <br />
        <div action="forms/contact.php" method="post" role="form" class="php-email-form p-3 p-md-4" style="width: 600px; margin-left: 450px;">

            <div class="section-header">
                <p><span style="font-size:48pt;">Yorum Yap</span></p>

                <br />

                <div class="row">

                    <div class="col-xl-6 form-group">

                        <asp:TextBox ID="txt_name" runat="server" CssClass="form-control" placeholder="Adınız Soyadınız"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_name" Font-Italic="True" Text="Lütfen Adınızı Giriniz!" ForeColor="#E40E13" Font-Bold="False"></asp:RequiredFieldValidator>
                    </div>
                    <br />
                    <div class="col-xl-6 form-group">
                        <asp:TextBox ID="txt_email" TextMode="Email" CssClass="form-control" placeholder="Mail Adresiniz" runat="server"></asp:TextBox>
                    </div>
                </div>
                <br />
                <div class="form-group">
                    <asp:TextBox ID="txt_message" CssClass="form-control" runat="server" placeholder="Yorumunuz" Height="150px" TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_message" Text="Lütfen Yorumsuz Gönderi Yapmayınız!" ForeColor="#E40E13" Font-Italic="True"></asp:RequiredFieldValidator>
                </div>
                <br />
                <div class="text-center">
                    <asp:Button type="submit" ID="btn_yorumyap" runat="server" Text="Yorum Yap" Style="background: var(--color-primary); border: 0; padding: 12px 40px; color: #fff; transition: 0.4s; border-radius: 50px;" OnClick="btn_yorumyap_Click" />
                    <br />
                </div>



            </div>
        </div>
    </section>


    <br />
    <br />
    <br />

</asp:Content>
