<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DuyuruEkle.aspx.cs" Inherits="WebNotSistemi.DuyuruEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="form1" runat="server">
        <div class="form-group">
            <div>
                <asp:Label for="txtDuyuruOgretmen" ID="Label1" runat="server">Duyuru Öğretmen</asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control"></asp:DropDownList>
            </div>
            <br />
            <div>
                <asp:Label for="txtDuyuruBaslik" ID="Label2" runat="server">Duyuru Başlık</asp:Label>
                <asp:TextBox ID="txtDuyuruBaslik" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtDuyuruIcerik" ID="Label3" runat="server">Duyuru İçerik</asp:Label>
                <textarea id="TextArea1" cols="20" rows="15" class="form-control" runat="server"></textarea>
            </div>
        </div>

        <asp:Button ID="btnEkle" runat="server" Text="OLUŞTUR" CssClass="btn btn-info" OnClick="btnEkle_Click"/>
        
    </form>
</asp:Content>
