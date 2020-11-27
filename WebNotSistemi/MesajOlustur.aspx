<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="MesajOlustur.aspx.cs" Inherits="WebNotSistemi.MesajOlustur" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="form1" runat="server">
        <div class="form-group">
            <div>
                <asp:label for="txtGonderen" id="Label1" runat="server">Gönderen</asp:label>
                <asp:textbox id="txtGonderen" runat="server" cssclass="form-control" Enabled="False"></asp:textbox>
            </div>
            <br />
            <div>
                <asp:label for="txtAlici" id="Label2" runat="server">Alıcı</asp:label>
                <asp:textbox id="txtAlici" runat="server" cssclass="form-control"></asp:textbox>
            </div>
            <br />
            <div>
                <asp:label for="txtMesajBaslik" id="Label3" runat="server">Mesaj Başlık</asp:label>
                <asp:textbox id="txtMesajBaslik" runat="server" cssclass="form-control"></asp:textbox>
            </div>
            <br />
            <div>
                <asp:label for="txtMesajIcerik" id="Label4" runat="server">Mesaj İçerik</asp:label>
                <textarea id="txtMesajIcerik" cols="20" rows="15" class="form-control" runat="server"></textarea>
            </div>
        </div>

        <asp:button id="btnGonder" runat="server" text="Gönder" cssclass="btn btn-info" OnClick="btnGonder_Click"/>

    </form>

</asp:Content>
