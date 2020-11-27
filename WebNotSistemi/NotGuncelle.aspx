<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="NotGuncelle.aspx.cs" Inherits="WebNotSistemi.NotGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="form1" runat="server">
        <div class="form-group">
            <div>
                <asp:Label for="txtDersAd" ID="Label7" runat="server">Ders Ad</asp:Label>
                <asp:TextBox ID="txtDersAd" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtOgrenciID" ID="Label1" runat="server">Öğrenci ID</asp:Label>
                <asp:TextBox ID="txtOgrenciID" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtOgrenciAdSoyad" ID="Label2" runat="server">Öğrenci Ad Soyad</asp:Label>
                <asp:TextBox ID="txtOgrenciAdSoyad" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtSınav1" ID="Label3" runat="server" >Sınav 1</asp:Label>
                <asp:TextBox ID="txtSınav1" runat="server" CssClass="form-control" AutoPostBack ="true" OnTextChanged="txtSınav1_TextChanged"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtSınav2" ID="Label4" runat="server">Sınav 2</asp:Label>
                <asp:TextBox ID="txtSınav2" runat="server" CssClass="form-control" AutoPostBack ="true" OnTextChanged="txtSınav2_TextChanged"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtSınav3" ID="Label5" runat="server">Sınav 3</asp:Label>
                <asp:TextBox ID="txtSınav3" runat="server" CssClass="form-control" AutoPostBack ="true" OnTextChanged="txtSınav3_TextChanged"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtOrtalama" ID="Label6" runat="server">Ortalama</asp:Label>
                <asp:TextBox ID="txtOrtalama" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtDurum" ID="Label8" runat="server">Durum</asp:Label>
                <asp:TextBox ID="txtDurum" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

        </div>
        <asp:Button ID="btnHesapla" runat="server" Text="HESAPLA" CssClass="btn btn-info" Style="height: 36px" OnClick="btnHesapla_Click"/>
        <asp:Button ID="btnGuncelle" runat="server" Text="GÜNCELLE" CssClass="btn btn-primary" Style="height: 36px" OnClick="btnGuncelle_Click"/>
    </form>

</asp:Content>
