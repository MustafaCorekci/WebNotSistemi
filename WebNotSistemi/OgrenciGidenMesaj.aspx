<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.Master" AutoEventWireup="true" CodeBehind="OgrenciGidenMesaj.aspx.cs" Inherits="WebNotSistemi.OgrenciGidenMesaj" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

     <table class="table table-bordered table-hover"">
        <thead class="thead-dark">
            <tr>
                <th scope="col">Alıcı</th>
                <th scope="col">Başlık</th>
                <th scope="col">İçerik</th>
                <th scope="col">Tarih</th>
            </tr>
        </thead>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                   <tr>
                       <td><%#Eval("Alici") %></td>
                       <td><%#Eval("Baslik") %></td>
                       <td><%#Eval("Icerik") %></td>
                       <td><%#Eval("Tarih") %></td>
                   </tr>
                </ItemTemplate>
            </asp:Repeater>          
        </tbody>
    </table>

</asp:Content>
