<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Hakkimizda.aspx.cs" Inherits="YemekTarifi.Hakkımızda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- ======= About Section ======= -->
    <br />
    <section id="about" class="about">
      <div class="container" data-aos="fade-up">

        <div class="section-header">
          <h2>Hakkımızda</h2>
          <p><span>Otobiyografi</span></p>
        </div>

        <div class="row gy-4">
          <div class="col-lg-7 position-relative about-img" style="background-image: url(assets/img/aboutt.jpg) ;" data-aos="fade-up" data-aos-delay="150">
            
          </div>
          <div class="col-lg-5 d-flex align-items-end" data-aos="fade-up" data-aos-delay="300">
            <div class="content ps-0 ps-lg-5">
              <p class="fst-italic">
                Bolu'nun Gerede ilçesinde dünyaya gelmiş. Karabük'te lise eğitimimi Karabük Anadolu Öğretmen Lisesinde tamamlamış. Üniversite eğitimimi ise Kocaeli Üniversitesi İnşaat Mühendisliği eğitimini tamamlamış,
                Herzaman hayatta hayallerinin peşinde ilerlemeye çalışan ve kendine daha çok şeyler katmayı benimsemiş sorumlulukta olan birisi olarak Yazılım'a olan ilgimi ve isteğimi 2 ay önce atmış olduğum adımlarla başlatmış ve 
                  2 ayın sonucunda tasarımını tamamlamış olduğum bu minik yemek tarifi sitesi ile sizlerin karşısında olmaktan gurur duyarım. <br /> Site tasarımımda kullanmış olduğum yazılımlar:
              </p>
              <ul>
                <li><i class="bi bi-check2-all"></i> ASP.NET WebForm ve MasterPage Kavramları Kullanıldı.</li>
                <li><i class="bi bi-check2-all"></i> Arka Planda Database Olarak MS SQL Kullanıldı.</li>
                <li><i class="bi bi-check2-all"></i> C# programlama dili ile SQL ile ASP.NET arasında veri aktarımı ve gerekli kodlamalar yapıldı</li>
              </ul>
              <p>
                Daha öğrenilecek ve üretilecek çok şey var!
              </p>

              
            </div>
          </div>
        </div>

      </div>
    </section><!-- End About Section -->

  
</asp:Content>
