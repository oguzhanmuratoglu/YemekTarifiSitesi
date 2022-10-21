<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="AnaSayfa.aspx.cs" Inherits="YemekTarifi.AnaSayfa" %>

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
    <!-- ======= Hero Section ======= -->
    <section id="hero" class="hero d-flex align-items-center section-bg" style="background-color: #F5EFE7">
        <div class="auto-style1">
            <div class="row justify-content-between gy-5">
                <div class="col-lg-5 order-2 order-lg-1 d-flex flex-column justify-content-center align-items-center align-items-lg-start text-center text-lg-start">
                    <h2 data-aos="fade-up">Haydi Sen de<br>
                        TarifLe!!</h2>
                    <p data-aos="fade-up" data-aos-delay="100">Türk Mutfağının En Kültürel Özelliklerini Koruyan Anane Eli Değmişcesine Lezzetli Tariflerle Mutfağınızı Şenlendirin..</p>
                    <div class="d-flex" data-aos="fade-up" data-aos-delay="200">
                        <a href="AnaSayfa.aspx#tarifoner" class="btn-book-a-table">Tarif Öner</a>
                    </div>
                </div>
                <div class="col-lg-5 order-1 order-lg-2 text-center text-lg-start">

                    <a href="https://www.youtube.com/watch?v=KIPVQUQ4mBw" class="glightbox play-btn">
                        <img src="assets/img/about-2.jpg" class="img-fluid" style="border-radius: 50%;" alt="" data-aos="zoom-out" data-aos-delay="300"></a>
                </div>
            </div>
        </div>
    </section>
    <!-- End Hero Section -->

    <main id="main">

        <!-- ======= Why Us Section ======= -->
        <section id="why-us" class="why-us section-bg">
            <div class="container" data-aos="fade-up">

                <div class="row gy-4">

                    <div class="col-lg-4" data-aos="fade-up" data-aos-delay="100">
                        <div class="why-box">
                            <h3>Neden Tarifler TarifLe'den Alınmalı?</h3>
                            <p>
                                Tarifle bütün içinde barındırdığı tarifleri, 
                  birçoğu kadın kullanıcılarının sitemize özenerek yazmış oldukları eşsiz ve yöreselliği ile doygun tarifleri sizler için özenle seçip yayınlamaktadır.
                            </p>
                            <div class="text-center">
                                <a href="Hakkimizda.aspx" class="more-btn">Daha Fazlası İçin <i class="bx bx-chevron-right"></i></a>
                            </div>
                        </div>
                    </div>
                    <!-- End Why Box -->

                    <div class="col-lg-8 d-flex align-items-center">
                        <div class="row gy-4">

                            <div class="col-xl-4" data-aos="fade-up" data-aos-delay="200">
                                <div class="icon-box d-flex flex-column justify-content-center align-items-center">
                                    <i class="bi bi-clipboard-data"></i>
                                    <h4>Pratik ve Lezzetli Sonuçlar</h4>
                                    <p>Evinize bir misafir geldiğinde, işten geç veya yorgun döndüğünüzde hemen bir şeyler hazırlamak ve lezzetten ödün vermek istemiyorsanız</p>
                                </div>
                            </div>
                            <!-- End Icon Box -->

                            <div class="col-xl-4" data-aos="fade-up" data-aos-delay="300">
                                <div class="icon-box d-flex flex-column justify-content-center align-items-center">
                                    <i class="bi bi-gem"></i>
                                    <h4>Sevdiklerinize Güzel bir Sunum Hazırlamak Mı??</h4>
                                    <p>
                                        Sevgimizi kazanan insanlar ve onları değerli hissettirebilmek hayatın en önemli parçalarından olsa gerek ki bizler de 
                      sevdiklerinize lezzetli yemeklerin yanında onları daha da mutlu edecek özel sunumlarla tariflerimizi sizlerle paylaşmaktayız
                                    </p>
                                </div>
                            </div>
                            <!-- End Icon Box -->

                            <div class="col-xl-4" data-aos="fade-up" data-aos-delay="400">
                                <div class="icon-box d-flex flex-column justify-content-center align-items-center">
                                    <i class="bi bi-inboxes"></i>
                                    <h4>Evinizdeki Malzemelerden Şaşmadan</h4>
                                    <p>Tariflerimizde yöresellikten ödün vermemekle birlikte evinizdeki malzemelerin dışındaki extrem tarifleri asla sizlerle paylaşmamaktayız</p>
                                </div>
                            </div>
                            <!-- End Icon Box -->

                        </div>
                    </div>

                </div>

            </div>
        </section>
        <!-- End Why Us Section -->

        <!-- ======= Stats Counter Section ======= -->
        <section id="stats-counter" class="stats-counter">
            <div class="container" data-aos="zoom-out">

                <div class="row gy-4">

                    <div class="col-lg-3 col-md-6">
                        <div class="stats-item text-center w-100 h-100">
                            <span data-purecounter-start="0" data-purecounter-end="232" data-purecounter-duration="1" class="purecounter"></span>
                            <p>Ziyaretçiler</p>
                        </div>
                    </div>
                    <!-- End Stats Item -->

                    <div class="col-lg-3 col-md-6">
                        <div class="stats-item text-center w-100 h-100">
                            <span data-purecounter-start="0" data-purecounter-end="521" data-purecounter-duration="1" class="purecounter"></span>
                            <p>Tarifler</p>
                        </div>
                    </div>
                    <!-- End Stats Item -->

                    <div class="col-lg-3 col-md-6">
                        <div class="stats-item text-center w-100 h-100">
                            <span data-purecounter-start="0" data-purecounter-end="54563" data-purecounter-duration="1" class="purecounter"></span>
                            <p>Mutfağına Girdiğimiz Kişi Sayısı</p>
                        </div>
                    </div>
                    <!-- End Stats Item -->

                    <div class="col-lg-3 col-md-6">
                        <div class="stats-item text-center w-100 h-100">
                            <span data-purecounter-start="0" data-purecounter-end="32" data-purecounter-duration="1" class="purecounter"></span>
                            <p>Çalışanlarımız</p>
                        </div>
                    </div>
                    <!-- End Stats Item -->

                </div>

            </div>
        </section>
        <!-- End Stats Counter Section -->

        <!-- ======= Menu Section ======= -->

        <section id="menu" class="menu">
            <div class="container" data-aos="fade-up">

                <div class="section-header">
                    <br />

                    <h2>Günün Yemeği</h2>
                    <p>Haydi sen de <span>TarifLe!!</span></p>
                </div>

                <ul class="nav nav-tabs d-flex justify-content-center" data-aos="fade-up" data-aos-delay="200">

                    <li class="nav-item">
                        <a class="nav-link active show" data-bs-toggle="tab" data-bs-target="#menu-starters">
                            <h4>Başlangıç</h4>
                        </a>
                    </li>
                    <!-- End tab nav item -->

                    <li class="nav-item">
                        <a class="nav-link" data-bs-toggle="tab" data-bs-target="#menu-breakfast">
                            <h4>Kahvaltı</h4>
                        </a>
                        <!-- End tab nav item -->

                        <li class="nav-item">
                            <a class="nav-link" data-bs-toggle="tab" data-bs-target="#menu-lunch">
                                <h4>Öğle Yemeği</h4>
                            </a>
                        </li>
                    <!-- End tab nav item -->

                    <li class="nav-item">
                        <a class="nav-link" data-bs-toggle="tab" data-bs-target="#menu-dinner">
                            <h4>Akşam Yemeği</h4>
                        </a>
                    </li>
                    <!-- End tab nav item -->

                </ul>

                <div class="tab-content" data-aos="fade-up" data-aos-delay="300">

                    <div class="tab-pane fade active show" id="menu-starters">

                        <div class="tab-header text-center">
                            <p>Menü</p>
                            <h3>Başlangıç</h3>
                        </div>
                        <br />
                        <br />
                        <div class="row gy-5">



                            <asp:DataList Style="position: relative; margin: auto" ID="dlBaslangıc" runat="server" DataKeyField="GYBaslangıcID" HorizontalAlign="Center" CellPadding="20" RepeatColumns="3" DataSourceID="dsBaslangıc">
                                <ItemTemplate>
                                    <div class="col-lg-4 menu-item" style="width: 400px; height: 400px;">
                                        <a href="<%#Eval("GYBaslangıcFoto") %>" class="glightbox">
                                            <img src='<%#Eval("GYBaslangıcFoto") %>' class="menu-img img-fluid" alt=""></a>
                                        <h4 class="gununki"><a href="YemekDetay.aspx?ID=<%#Eval("YemekID") %>"><%#Eval("GYBaslangıcAd") %></a></h4>
                                        <p class="ingredients"><%#Eval("GYBaslangıcMalzeme") %></p>
                                        <p style="font-family: 'Bookman Old Style'">TarifLe Puanı:<span class="price"> <%#Eval("GYBaslangıcPuan") %></span></p>

                                    </div>
                                </ItemTemplate>
                            </asp:DataList>

                            <asp:SqlDataSource ID="dsBaslangıc" runat="server" ConnectionString="<%$ ConnectionStrings:Dbo_YemekTarifiConnectionString %>" SelectCommand="SELECT * FROM [Tbl_GYBaslangıc] WHERE ([GYBaslangıcDurum] = @GYBaslangıcDurum)">
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="True" Name="GYBaslangıcDurum" Type="Boolean" />
                                </SelectParameters>
                            </asp:SqlDataSource>


                            <!-- Menu Item -->

                        </div>
                    </div>
                    <!-- End Starter Menu Content -->

                    <div class="tab-pane fade" id="menu-breakfast">

                        <div class="tab-header text-center">
                            <p>Menü</p>
                            <h3>Kahvaltı</h3>
                        </div>
                        <br />
                        <br />
                        <div class="row gy-5">

                           
                                <asp:DataList Style="position: relative; margin: auto" ID="dlKahvaltı" runat="server" HorizontalAlign="Center" CellPadding="20" RepeatColumns="3" DataKeyField="GYKahvaltıID" DataSourceID="dsKahvaltı">
                                    <ItemTemplate>
                                         <div class="col-lg-4 menu-item" style="width: 400px; height: 400px;">
                                        <a href="<%#Eval("GYKahvaltıFoto") %>" class="glightbox">
                                            <img src='<%#Eval("GYKahvaltıFoto") %>' class="menu-img img-fluid" alt=""></a>
                                        <h4 class="gununki"><a href="YemekDetay.aspx?ID=<%#Eval("YemekID") %>"><%#Eval("GYKahvaltıAd") %></a></h4>
                                        <p class="ingredients"><%#Eval("GYKahvaltıMalzeme") %></p>
                                        <p style="font-family: 'Bookman Old Style'">TarifLe Puanı:<span class="price"> <%#Eval("GYKahvaltıPuan") %></span></p>
                                              </div>
                                    </ItemTemplate>
                                </asp:DataList>
                           
                            <asp:SqlDataSource ID="dsKahvaltı" runat="server" ConnectionString="<%$ ConnectionStrings:Dbo_YemekTarifiConnectionString %>" SelectCommand="SELECT * FROM [Tbl_GYKahvaltı] WHERE ([GYKahvaltıDurum] = @GYKahvaltıDurum)">
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="True" Name="GYKahvaltıDurum" Type="Boolean" />
                                </SelectParameters>
                            </asp:SqlDataSource>

                        </div>
                        <!-- Menu Item -->

                    </div>
                    <!-- End Breakfast Menu Content -->

                    <div class="tab-pane fade" id="menu-lunch">

                        <div class="tab-header text-center">
                            <p>Menü</p>
                            <h3>Öğle Yemeği</h3>
                        </div>
                        <br />
                        <br />
                        <div class="row gy-5">

                            

                                <asp:DataList Style="position: relative; margin: auto" ID="dlOgle" runat="server" HorizontalAlign="Center" CellPadding="20" RepeatColumns="3" DataKeyField="GYOgleYemegiID" DataSourceID="dsOgle">
                                    <ItemTemplate>
                                        <div class="col-lg-4 menu-item" style="width: 400px; height: 400px;">
                                        <a href="<%#Eval("GYOgleYemegiFoto") %>" class="glightbox">
                                            <img src='<%#Eval("GYOgleYemegiFoto") %>' class="menu-img img-fluid" alt=""></a>
                                        <h4 class="gununki"><a href="YemekDetay.aspx?ID=<%#Eval("YemekID") %>"><%#Eval("GYOgleYemegiAd") %></a></h4>
                                        <p class="ingredients"><%#Eval("GYOgleYemegiMalzeme") %></p>
                                        <p style="font-family: 'Bookman Old Style'">TarifLe Puanı:<span class="price"> <%#Eval("GYOgleYemegiPuan") %></span></p>
                                               </div>
                                    </ItemTemplate>
                                </asp:DataList>
                            </div>
                            <asp:SqlDataSource ID="dsOgle" runat="server" ConnectionString="<%$ ConnectionStrings:Dbo_YemekTarifiConnectionString %>" SelectCommand="SELECT * FROM [Tbl_GYOgleYemegi] WHERE ([GYOgleYemegiDurum] = @GYOgleYemegiDurum)">
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="True" Name="GYOgleYemegiDurum" Type="Boolean" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                     
                        <!-- Menu Item -->
                    </div>

                    <!-- End Lunch Menu Content -->

                    <div class="tab-pane fade" id="menu-dinner">

                        <div class="tab-header text-center">
                            <p>Menü</p>
                            <h3>Akşam Yemeği</h3>
                        </div>
                        <br />
                        <br />
                        <div class="row gy-5">



                            <asp:DataList Style="position: relative; margin: auto" ID="dlAksamYemegi" runat="server" HorizontalAlign="Center" CellPadding="20" RepeatColumns="3" DataKeyField="GYAksamYemegiID" DataSourceID="dsAksam">
                                <ItemTemplate>
                                    <div class="col-lg-4 menu-item" style="width: 400px; height: 400px;">
                                        <a href="<%#Eval("GYAksamYemegiFoto") %>" class="glightbox">
                                            <img src='<%#Eval("GYAksamYemegiFoto") %>' class="menu-img img-fluid" alt=""></a>
                                        <h4 class="gununki"><a href="YemekDetay.aspx?ID=<%#Eval("YemekID") %>"><%#Eval("GYAksamYemegiAd") %></a></h4>
                                        <p class="ingredients"><%#Eval("GYAksamYemegiMalzeme") %></p>
                                        <p style="font-family: 'Bookman Old Style'">TarifLe Puanı:<span class="price"> <%#Eval("GYAksamYemegiPuan") %></span></p>
                                    </div>
                                </ItemTemplate>
                            </asp:DataList>

                            <asp:SqlDataSource ID="dsAksam" runat="server" ConnectionString="<%$ ConnectionStrings:Dbo_YemekTarifiConnectionString %>" SelectCommand="SELECT * FROM [Tbl_GYAksamYemegi] WHERE ([GYAksamYemegiDurum] = @GYAksamYemegiDurum)">
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="True" Name="GYAksamYemegiDurum" Type="Boolean" />
                                </SelectParameters>
                            </asp:SqlDataSource>


                            <!-- Menu Item -->
                        </div>
                    </div>
                    <!-- End Dinner Menu Content -->
                </div>
            </div>
        </section>
        <!-- End Menu Section -->

        <!-- ======= Testimonials Section ======= -->
        <section id="testimonials" class="testimonials section-bg">
            <div class="container" data-aos="fade-up">

                <div class="section-header">
                    <h2>Referanslar</h2>
                    <p>Bizim Hakkımızda <span>Ne Diyorlar?</span></p>
                </div>

                <div class="slides-1 swiper" data-aos="fade-up" data-aos-delay="100">
                    <div class="swiper-wrapper">

                        <div class="swiper-slide">
                            <div class="testimonial-item">
                                <div class="row gy-4 justify-content-center">
                                    <div class="col-lg-6">
                                        <div class="testimonial-content">
                                            <p>
                                                <i class="bi bi-quote quote-icon-left"></i>
                                                Altın kokan etlerimi nadiren de olsa yemekten bıktığım zaman günün yemeğindeki başlangıçlar benim için mükemmel başlangıçlar.. Kapiçinooo!
                        <i class="bi bi-quote quote-icon-right"></i>
                                            </p>
                                            <h3>Nusret Gökçe</h3>
                                            <h4>Milyoner &amp; Bilyoner!</h4>
                                            <div class="stars">
                                                <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-2 text-center">
                                        <img src="assets/img/testimonials/testimonials-1.jpg" class="img-fluid testimonial-img" alt="">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End testimonial item -->
                        <div class="swiper-slide">
                            <div class="testimonial-item">
                                <div class="row gy-4 justify-content-center">
                                    <div class="col-lg-6">
                                        <div class="testimonial-content">
                                            <p>
                                                <i class="bi bi-quote quote-icon-left"></i>
                                                Mükemmel tarifler barındıran bir site! Diğer sitelerin aksine Türk kültürü ve anadolu dokunuşlarını tariflerinde çok iyi bir şekilde barından bir kuruluş. Bu işte emeği geçen herkese gerçekten sonsuz teşekkürler. Gerçekten Bayıldım!!
                        <i class="bi bi-quote quote-icon-right"></i>
                                            </p>
                                            <h3>Aylin Yazıcıoğlu</h3>
                                            <h4>Şef</h4>
                                            <div class="stars">
                                                <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-2 text-center">
                                        <img src="assets/img/testimonials/testimonials-2.jpg" class="img-fluid testimonial-img" alt="">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End testimonial item -->

                        <div class="swiper-slide">
                            <div class="testimonial-item">
                                <div class="row gy-4 justify-content-center">
                                    <div class="col-lg-6">
                                        <div class="testimonial-content">
                                            <p>
                                                <i class="bi bi-quote quote-icon-left"></i>
                                                Anadolu mutfağına özgü yemekleri doğallığıyla sofralarınıza buluşturabilecek bir site. 
                        <i class="bi bi-quote quote-icon-right"></i>
                                            </p>
                                            <h3>Mehmet Yalçınkaya</h3>
                                            <h4>Program Sunucusu</h4>
                                            <div class="stars">
                                                <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-2 text-center">
                                        <img src="assets/img/testimonials/testimonials-3.jpg" class="img-fluid testimonial-img" alt="">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End testimonial item -->

                        <div class="swiper-slide">
                            <div class="testimonial-item">
                                <div class="row gy-4 justify-content-center">
                                    <div class="col-lg-6">
                                        <div class="testimonial-content">
                                            <p>
                                                <i class="bi bi-quote quote-icon-left"></i>
                                                Herkese Merhaba! Uzun soluklu set trafiğinden kendime vakit bulduğum zamanlarda bu güzel sitenin tariflerini değerlendirdiğimi ve ayrıca zaman zaman da tarif önerdiğimi sizlerle paylaşmak isterim :)
                        <i class="bi bi-quote quote-icon-right"></i>
                                            </p>
                                            <h3>Esra Bilgiç</h3>
                                            <h4>Oyuncu</h4>
                                            <div class="stars">
                                                <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-2 text-center">
                                        <img src="assets/img/testimonials/testimonials-4.jpg" class="img-fluid testimonial-img" alt="">
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

        <!-- ======= Events Section ======= -->
        <section id="events" class="events">
            <div class="container-fluid" data-aos="fade-up">

                <div class="section-header">
                    <h2>Anılar</h2>
                    <p>Anılarınızı<span> Bizimle </span>Paylaşın</p>
                </div>

                <div class="slides-3 swiper" data-aos="fade-up" data-aos-delay="100">
                    <div class="swiper-wrapper">

                        <div class="swiper-slide event-item d-flex flex-column justify-content-end" style="background-image: url(assets/img/events-1.jpg)">
                            <h3></h3>
                            <div class="price align-self-start"></div>
                        </div>
                        <!-- End Event item -->

                        <div class="swiper-slide event-item d-flex flex-column justify-content-end" style="background-image: url(assets/img/events-2.jpg)">
                            <h3></h3>
                            <div class="price align-self-start"></div>
                            <p class="description">
                            </p>
                        </div>
                        <!-- End Event item -->

                        <div class="swiper-slide event-item d-flex flex-column justify-content-end" style="background-image: url(assets/img/events-3.jpg)">
                            <h3></h3>
                            <div class="price align-self-start"></div>
                            <p class="description">
                            </p>
                        </div>
                        <!-- End Event item -->

                    </div>
                    <div class="swiper-pagination"></div>
                </div>

            </div>
        </section>
        <!-- End Events Section -->



        <!--Book A Table Section -->

        <section id="tarifoner" class="book-a-table">
            <br />
            <div class="auto-style2" data-aos="fade-up" style="width: 100%;">

                <div class="section-header">
                    <h2></h2>
                    <p><span>Tariflerinizi Bizimle Paylaşınız</span></p>

                    <br />
                    <div class="row g-0" style="width: 100%">

                        <div class="col-lg-4 reservation-img" style="background-image: url(assets/img/reservation.jpg);" data-aos="zoom-out" data-aos-delay="200"></div>

                        <div class="col-lg-8 d-flex align-items-center reservation-form-bg">
                            <div action="forms/book-a-table.php" method="post" role="form" class="php-email-form" data-aos="fade-up" data-aos-delay="100">

                                <div class="row gy-4">
                                    <div class="col-lg-4 col-md-6">
                                        <asp:TextBox ID="txt_ad" runat="server" CssClass="form-control" placeholder="Adınız Soyadınız" data-rule="minlen:4" data-msg="Please enter at least 4 chars" Width="200"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Lütfen Adınızı Giriniz" ControlToValidate="txt_ad" Font-Italic="True" ForeColor="#E40E13"></asp:RequiredFieldValidator>
                                        <div class="validate"></div>
                                    </div>
                                    <div class="col-lg-4 col-md-6">
                                        <asp:TextBox ID="txt_email" runat="server" CssClass="form-control" TextMode="Email" placeholder="E-Mail Adresiniz" data-rule="email" data-msg="Email Adresinizi Giriniz" Width="200"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Lütfen Geçerli Mail Adresinizi Giriniz" ControlToValidate="txt_email" Font-Italic="True" ForeColor="#E40E13"></asp:RequiredFieldValidator>
                                        <div class="validate"></div>
                                    </div>
                                    <div class="col-lg-4 col-md-6">
                                        <asp:TextBox ID="txt_tarifad" runat="server" CssClass="form-control" placeholder="Yemek Adı" Width="200"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Lütfen Tarifin Adını Giriniz" Font-Italic="True" ForeColor="#E40E13" ControlToValidate="txt_tarifad"></asp:RequiredFieldValidator>
                                        <div class="validate"></div>
                                    </div>

                                    <div class="col-lg-4 col-md-6">

                                        <asp:TextBox ID="txt_gereklimalzemeler" runat="server" CssClass="form-control" placeholder="Gerekli Malzemeler" TextMode="SingleLine" Width="470" Height="40"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Malzemeler Kısmı Boş Bırakılamaz!" Font-Italic="True" ForeColor="#E40E13" ControlToValidate="txt_gereklimalzemeler"></asp:RequiredFieldValidator>
                                        <div class="validate"></div>
                                    </div>

                                    <div class="col-lg-4 col-md-6">
                                        <asp:FileUpload ID="FileUpload1" runat="server" Style="margin-left: 270px;" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Lütfen Yemeğin Fotoğrafını Bizimle Paylaşınız" Font-Italic="True" ForeColor="#E40E13" ControlToValidate="FileUpload1"></asp:RequiredFieldValidator>
                                        <div class="validate"></div>
                                    </div>
                                    <div class="validate"></div>

                                </div>
                                <div class="form-group mt-3">

                                    <asp:TextBox ID="txt_hazırlanıs" runat="server" CssClass="form-control" placeholder="Lütfen hazırlanışını detaylı bir şekilde bu metine yazınız." TextMode="MultiLine" Height="150"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Hazırlanış metni boş bırakılamaz!" Font-Italic="True" ForeColor="#E40E13" ControlToValidate="txt_hazırlanıs"></asp:RequiredFieldValidator>
                                    <div class="validate"></div>
                                </div>
                                <br />
                                <div class="text-center">
                                    <asp:Button ID="Button1" runat="server" Style="background: var(--color-primary); border: 0; padding: 12px 40px; color: #fff; transition: 0.4s; border-radius: 50px;" Text="Tarif Öner" OnClick="Button1_Click" />
                                </div>

                            </div>

                        </div>
                        <!-- End Reservation Form -->
                    </div>

                </div>

            </div>
        </section>
        <!-- End Book A Table Section -->




    </main>
    <!-- End #main -->
</asp:Content>
