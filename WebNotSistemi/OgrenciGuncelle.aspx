<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="OgrenciGuncelle.aspx.cs" Inherits="WebNotSistemi.OgrenciGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="form1" runat="server">
        <div class="form-group">
            <div>
                <asp:Label for="txtOgrenciID" ID="Label7" runat="server">Öğrenci ID</asp:Label>
                <asp:TextBox ID="txtOgrenciID" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtOgrenciAd" ID="Label1" runat="server">Öğrenci Ad</asp:Label>
                <asp:TextBox ID="txtOgrenciAd" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtOgrenciSoyad" ID="Label2" runat="server">Öğrenci Soyad</asp:Label>
                <asp:TextBox ID="txtOgrenciSoyad" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtOgrenciTelefon" ID="Label3" runat="server">Öğrenci Telefon</asp:Label>
                <asp:TextBox ID="txtOgrenciTelefon" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtOgrenciMail" ID="Label4" runat="server">Öğrenci Mail</asp:Label>
                <asp:TextBox ID="txtOgrenciMail" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtOgrenciSifre" ID="Label5" runat="server">Öğrenci Sifre</asp:Label>
                <asp:TextBox ID="txtOgrenciSifre" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtOgrenciFoto" ID="Label6" runat="server">Öğrenci Fotğraf Link</asp:Label>
                <asp:TextBox ID="txtOgrenciFoto" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

        </div>
        <asp:Button ID="btnGuncelle" runat="server" Text="GÜNCELLE" CssClass="btn btn-primary" style="height: 36px" OnClick="btnGuncelle_Click" />
    </form>

</asp:Content>
