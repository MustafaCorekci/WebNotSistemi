<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="Galeri.aspx.cs" Inherits="WebNotSistemi.Galeri" %>

<%@ Register Assembly="DevExpress.Web.v19.2, Version=19.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="form1" runat="server">
        
        <dx:ASPxImageGallery ID="ASPxImageGallery1" runat="server" DataSourceID="SqlDataSource1" ImageUrlField="OgrenciFotograf" Theme="Aqua">
            <SettingsFolder ImageCacheFolder="~/Thumb/" />
            <Items>
                <dx:ImageGalleryItem ImageUrl="https://w0.pngwave.com/png/947/520/student-university-and-college-admission-institute-education-medical-students-png-clip-art.png">
                </dx:ImageGalleryItem>
                <dx:ImageGalleryItem ImageUrl="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRgUXa68RkjRPaOvcDEPY2VzBiSrv_Lyncm-1zWl_yzgx_Sxu-2&amp;usqp=CAU">
                </dx:ImageGalleryItem>
                <dx:ImageGalleryItem ImageUrl="https://www.kolejozluce.com/wp-content/uploads/2018/04/student-png-5a38471be320e8.9962586515136376599303.jpg">
                </dx:ImageGalleryItem>
                <dx:ImageGalleryItem ImageUrl="https://pngimg.com/uploads/student/student_PNG62520.png">
                </dx:ImageGalleryItem>
                <dx:ImageGalleryItem ImageUrl="https://g7.pngresmi.com/preview/427/61/96/international-student-stock-photography-education-school-student-thumbnail.jpg">
                </dx:ImageGalleryItem>
                <dx:ImageGalleryItem ImageUrl="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRvHwtSoefrbB-SGa68_Jni7FOR8XtWl2A4VhPmfDFuMnIEmj4Q&amp;usqp=CAU">
                </dx:ImageGalleryItem>
                <dx:ImageGalleryItem ImageUrl="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQYo8gp0SIE2sTyE5BTsRt-s3vIF5khwIMEvcWQoJJCtrsJeOqk&amp;usqp=CAU">
                </dx:ImageGalleryItem>
                <dx:ImageGalleryItem ImageUrl="https://img1.pngindir.com/20190511/zel/kisspng-portable-network-graphics-student-masters-degree-axis-college-of-economics-amp-commerce-5cd6982985bef2.0183294215575675295478.jpg">
                </dx:ImageGalleryItem>
                <dx:ImageGalleryItem ImageUrl="https://esenbogashuttle.com/images/uniterevolution/ana-sayfa-slide-tr/images/sliders/master/slide3/student1.png">
                </dx:ImageGalleryItem>
                <dx:ImageGalleryItem ImageUrl="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTV4gFsUwWDz9KFFYUJoSs5Jw3WB759Zh3Y7gfBanh6FJkbD0lz&amp;usqp=CAU">
                </dx:ImageGalleryItem>
                <dx:ImageGalleryItem ImageUrl="https://img.favpng.com/19/23/22/student-college-training-education-hedkey-india-pvt-ltd-static-website-designing-company-in-uttam-nagar-delhi-india-png-favpng-DXU4L8EFQy1dLUFJYM78AhP5H_t.jpg">
                </dx:ImageGalleryItem>
                <dx:ImageGalleryItem ImageUrl="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSPEAoh-Cjz5AGsYljVpZiRaaXROHCyUkIkYjHV3karVRY2izmZ&amp;usqp=CAU">
                </dx:ImageGalleryItem>
                <dx:ImageGalleryItem ImageUrl="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQPZIP1y9iAB2Kz6x72qgF48jquVhpLXqMqQTen3hafzc8Wrhzs&amp;usqp=CAU">
                </dx:ImageGalleryItem>
                <dx:ImageGalleryItem ImageUrl="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT5V_f72mbOTrR3T8KMTjIc8pYGRwTXs8mSdTJ15yjnjqhG_9nP&amp;usqp=CAU">
                </dx:ImageGalleryItem>
                <dx:ImageGalleryItem ImageUrl="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRQUSfOt6n49KY_b7qJZl0AVS441kop4QIE-cXJzSEPiA8Kg12Q&amp;usqp=CAU">
                </dx:ImageGalleryItem>
            </Items>
            <SettingsTableLayout ColumnCount="6" />
        </dx:ASPxImageGallery>

        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbOkulSiteConnectionString2 %>" SelectCommand="SELECT [OgrenciFotograf] FROM [tblOgrenci]"></asp:SqlDataSource>
    </form>

</asp:Content>
