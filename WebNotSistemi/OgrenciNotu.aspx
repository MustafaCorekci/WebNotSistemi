<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.Master" AutoEventWireup="true" CodeBehind="OgrenciNotu.aspx.cs" Inherits="WebNotSistemi.OgrenciNotu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <table class="table table-bordered table-hover"">
        <thead class="thead-dark">
            <tr>
                <th scope="col">ÖĞRENCİ ID</th>
                <th scope="col">AD SOYAD</th>
                <th scope="col">DERS AD</th>
                <th scope="col">SINAV 1</th>
                <th scope="col">SINAV 2</th>
                <th scope="col">SINAV 3</th>
                <th scope="col">ORTALAMA</th>
                <th scope="col">DURUM</th>
            </tr>
        </thead>
        <tbody>
            <%--<th scope="row">1</th>--%>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                   <tr>
                       <td><%#Eval("OgrenciID") %></td>
                       <td><%#Eval("Ad Soyad") %></td>
                       <td><%#Eval("DersAd") %></td>
                       <td><%#Eval("Sinav1") %></td>
                       <td><%#Eval("Sinav2") %></td>
                       <td><%#Eval("Sinav3") %></td>
                       <td><%#Eval("Ortalama") %></td>
                       <td><%#Eval("Durum") %></td>
                   </tr>
                </ItemTemplate>
            </asp:Repeater>
            
            
        </tbody>
    </table>

</asp:Content>
