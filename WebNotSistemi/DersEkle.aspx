<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DersEkle.aspx.cs" Inherits="WebNotSistemi.DersEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="form1" runat="server">
        <div class="form-group">
            <div>
                <asp:Label for="txtDers" ID="Label2" runat="server">Ders Ad</asp:Label>
                <asp:TextBox ID="txtDers" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
        </div>

        <asp:Button ID="btnEkle" runat="server" Text="OLUŞTUR" CssClass="btn btn-info" OnClick="btnEkle_Click" />

    </form>

</asp:Content>
