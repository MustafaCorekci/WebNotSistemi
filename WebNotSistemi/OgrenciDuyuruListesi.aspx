<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.Master" AutoEventWireup="true" CodeBehind="OgrenciDuyuruListesi.aspx.cs" Inherits="WebNotSistemi.OgrenciDuyuruListesi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

     <table class="table table-bordered table-hover"">
        <thead class="thead-dark">
            <tr>
                <th scope="col">Tarih</th>
                <th scope="col">Başlık</th>
                <th scope="col">İçerik</th>
                <th scope="col">Öğretmen</th>
            </tr>
        </thead>
        <tbody>
            <%--<th scope="row">1</th>--%>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                   <tr>
                       <td><%#Eval("DuyuruTarih") %></td>
                       <td><%#Eval("DuyuruBaslik") %></td>
                       <td><%#Eval("DuyuruIcerik") %></td>
                       <td><%#Eval("OgretmenAdSoyad") %></td>
                   </tr>
                </ItemTemplate>
            </asp:Repeater>
            
            
        </tbody>
    </table>

</asp:Content>
