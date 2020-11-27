<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DersGuncelle.aspx.cs" Inherits="WebNotSistemi.DersGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

      <form id="form1" runat="server">
        <div class="form-group">
            <div>
                <asp:Label for="txtDersID" ID="Label1" runat="server">Ders ID</asp:Label>
                <asp:TextBox ID="txtDersID" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtDersAd" ID="Label2" runat="server">Ders Adı</asp:Label>
                <asp:TextBox ID="txtDersAd" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>

        <asp:Button ID="btnGuncelle" runat="server" Text="GÜNCELLE" CssClass="btn btn-info" OnClick="btnGuncelle_Click"/>
        
    </form>

</asp:Content>
