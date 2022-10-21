<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Iletisim.aspx.cs" Inherits="YemekTarifi.Iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <!-- ======= Contact Section ======= -->

    <section id="contact" class="contact">
        <div class="container" data-aos="fade-up">
            <div class="section-header">
                <h2>Iletişim</h2>
                <p>Öneri ve Şikayetleriniz için <span>Bizimle İletişime Geçin</span></p>
            </div>

            <div class="mb-3">
                <iframe style="border: 0; width: 100%; height: 500px;" src="https://www.google.com/maps/d/u/0/embed?mid=1E7GLeLzLasm1VQQ0CzoINyxDMbH7GE8&ehbc=2E312F" frameborder="0" allowfullscreen></iframe>
            </div>
            <!-- End Google Maps -->


            <div class="row gy-4">

                <div class="col-md-6">
                    <div class="info-item  d-flex align-items-center">
                        <i class="icon bi bi-map flex-shrink-0"></i>
                        <div>
                            <h3>Adresimiz</h3>
                            <p>Huzur Mh., Metin Oktay Caddesi, 34396 Sarıyer/İstanbul</p>
                        </div>
                    </div>
                </div>
                <!-- End Info Item -->

                <div class="col-md-6">
                    <div class="info-item d-flex align-items-center">
                        <i class="icon bi bi-envelope flex-shrink-0"></i>
                        <div>
                            <h3>Mail Adresimiz</h3>
                            <p>oguzhanmuratoglu14@gmail.com</p>
                        </div>
                    </div>
                </div>
                <!-- End Info Item -->

                <div class="col-md-6">
                    <div class="info-item  d-flex align-items-center">
                        <i class="icon bi bi-telephone flex-shrink-0"></i>
                        <div>
                            <h3>Bize Ulaşın</h3>
                            <p>+90 999 9999</p>
                        </div>
                    </div>
                </div>
                <!-- End Info Item -->

                <div class="col-md-6">
                    <div class="info-item  d-flex align-items-center">
                        <i class="icon bi bi-share flex-shrink-0"></i>
                        <div>
                            <h3>Çalışma Saatlerimiz</h3>
                            <div>
                                <strong>Pazartesi - Cuma:</strong> 10:00 - 22.00;
                                    <br />
                                <strong>Cumartesi-Pazar:</strong> Çalışmıyoruz :/
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Info Item -->
                
            </div>

            <br />
            <form action="forms/contact.php" method="post" role="form" class="php-email-form p-3 p-md-4">
                <div class="row">
                    <div class="col-xl-6 form-group">

                        <asp:TextBox ID="name" runat="server" CssClass="form-control" placeholder="Adınız Soyadınız"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="name" Font-Italic="True" Text="Lütfen Adınızı Giriniz!" ForeColor="#E40E13" Font-Bold="False"></asp:RequiredFieldValidator>
                    </div>
                    <br />
                    <div class="col-xl-6 form-group">
                        <asp:TextBox ID="email" TextMode="Email" CssClass="form-control" placeholder="Mail Adresiniz" runat="server"></asp:TextBox>
                    </div>
                </div>
                <br />
                <div class="form-group">
                    <asp:TextBox ID="subject" CssClass="form-control" placeholder="Konu" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="subject" Text="Lütfen Bir Konu Giriniz!" ForeColor="#E40E13" Font-Italic="True"></asp:RequiredFieldValidator>
                </div>
                <br />
                <div class="form-group">
                    <asp:TextBox ID="message" CssClass="form-control" runat="server" placeholder="Mesajınız" Height="150px" TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="message" Text="Lütfen Mesajınızı Giriniz!" ForeColor="#E40E13" Font-Italic="True"></asp:RequiredFieldValidator>
                </div>
                <br />
                <div class="text-center">
                    <asp:Button type="submit" ID="Button1" runat="server" Text="Mesaj Gönder!" Style="background: var(--color-primary); border: 0; padding: 12px 40px; color: #fff; transition: 0.4s; border-radius: 50px;" OnClick="Button1_Click" />
                    
                </div>
            </form>
            <!--End Contact Form -->

        </div>
    </section>
    <!-- End Contact Section -->
</asp:Content>
