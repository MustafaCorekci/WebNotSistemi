<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.Master" AutoEventWireup="true" CodeBehind="OgrenciDefault.aspx.cs" Inherits="WebNotSistemi.OgrenciDefault" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="form1" runat="server">
        <div class="form-group">

            <div>
                <asp:TextBox ID="Textbox0" runat="server" CssClass="form-control" BackColor="DarkBlue" ForeColor="White" Enabled="False" Text="Center">Kişisel Bilgiler</asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="txtNumara" runat="server" CssClass="form-control" BackColor="Aqua" Enabled="False">Numara</asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="txtAdSoyad" runat="server" CssClass="form-control" BackColor="Aqua" Enabled="False">Ad Soyad</asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="txtMail" runat="server" CssClass="form-control" BackColor="Aqua" Enabled="False">Mail</asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="txtTelefon" runat="server" CssClass="form-control" Enabled="False" BackColor="Aqua">Telefon</asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="txtSifre" runat="server" CssClass="form-control" BackColor="Aqua" Enabled="False">Şifre</asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="txtFotograf" runat="server" CssClass="form-control" BackColor="Aqua" Enabled="False"></asp:TextBox>
            </div>

        </div>
        <asp:Button ID="btnSifreDegistir" runat="server" CssClass="btn btn-info" Text="Şifre Değiştir" OnClick="btnSifreDegistir_Click" />
    </form>

</asp:Content>
