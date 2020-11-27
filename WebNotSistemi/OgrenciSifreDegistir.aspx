<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.Master" AutoEventWireup="true" CodeBehind="OgrenciSifreDegistir.aspx.cs" Inherits="WebNotSistemi.OgrenciSifreDegistir" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="form1" runat="server">
        <div class="form-group">

            <div>
                <asp:TextBox ID="Textbox0" runat="server" CssClass="form-control" BackColor="DarkBlue" ForeColor="White" Enabled="False" Text="Center">Şifre Değiştir</asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="txtNumara" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="txtSifre1" runat="server" CssClass="form-control" >Şifre</asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="txtSifre2" runat="server" CssClass="form-control" >Şifre Tekrar</asp:TextBox>
            </div>
        </div>

        <asp:Button ID="btnDegistir" runat="server" CssClass="btn btn-info" Text="Şifreyi Değiştir" OnClick="btnDegistir_Click" />

    </form>
</asp:Content>
