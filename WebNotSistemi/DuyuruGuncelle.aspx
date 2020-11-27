<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DuyuruGuncelle.aspx.cs" Inherits="WebNotSistemi.DuyuruGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

       <form id="form1" runat="server">
        <div class="form-group">
            <div>
                <asp:Label for="txtDuyuruID" ID="Label1" runat="server">Duyuru ID</asp:Label>
                <asp:TextBox ID="txtDuyuruID" runat="server" CssClass="form-control"></asp:TextBox>
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

        <asp:Button ID="btnGuncelle" runat="server" Text="GÜNCELLE" CssClass="btn btn-info" OnClick="btnGuncelle_Click"/>
        
    </form>

</asp:Content>
