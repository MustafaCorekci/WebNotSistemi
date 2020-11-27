<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebNotSistemi.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <table class="table table-bordered table-hover"">
        <thead class="thead-dark">
            <tr>
                <th scope="col">ID</th>
                <th scope="col">Numara</th>
                <th scope="col">Ad</th>
                <th scope="col">Soyad</th>
                <th scope="col">Telefon</th>
                <th scope="col">Mail</th>
                <th scope="col">Şifre</th>
                <th scope="col">İŞLEMLER</th>
            </tr>
        </thead>
        <tbody>
            <%--<th scope="row">1</th>--%>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                   <tr>
                       <td><%#Eval("OgrenciID") %></td>
                       <td><%#Eval("Numara") %></td>
                       <td><%#Eval("OgrenciAd") %></td>
                       <td><%#Eval("OgrenciSoyad") %></td>
                       <td><%#Eval("OgrenciTelefon") %></td>
                       <td><%#Eval("OgrenciMail") %></td>
                       <td><%#Eval("OgrenciSifre") %></td>
                       <td>
                           <asp:HyperLink ID="HyperLink1" NavigateUrl=<%# "~/OgrenciSil.aspx?OgrenciID="+Eval("OgrenciID")%> runat="server" CssClass="btn btn-danger">SİL</asp:HyperLink>
                           <asp:HyperLink ID="HyperLink2" NavigateUrl=<%# "~/OgrenciGuncelle.aspx?OgrenciID="+Eval("OgrenciID") %> runat="server" CssClass="btn btn-success">GÜNCELLE</asp:HyperLink>
                       </td>
                   </tr>
                </ItemTemplate>
            </asp:Repeater>
            
            
        </tbody>
    </table>

</asp:Content>
