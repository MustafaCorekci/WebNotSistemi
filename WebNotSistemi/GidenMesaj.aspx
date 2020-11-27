<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="GidenMesaj.aspx.cs" Inherits="WebNotSistemi.GidenMesaj" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <table class="table table-bordered table-hover"">
        <thead class="thead-dark">
            <tr>
                <th scope="col">ID</th>
                <th scope="col">Tarih</th>
                <th scope="col">Alıcı</th>
                <th scope="col">Başlık</th>
                <th scope="col">İçerik</th>
            </tr>
        </thead>
        <tbody>
            <%--<th scope="row">1</th>--%>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                   <tr>
                       <td><%#Eval("MesajID") %></td>
                       <td><%#Eval("Tarih") %></td>
                       <td><%#Eval("Alici") %></td>
                       <td><%#Eval("Baslik") %></td>
                       <td><%#Eval("Icerik") %></td>
                       <%--<td>
                           <asp:HyperLink NavigateUrl='<%# "DuyuruSil.aspx?DuyuruID=" + Eval("DuyuruID")%>' ID="HyperLink1" runat="server" CssClass="btn btn-danger">SİL</asp:HyperLink>
                           <asp:HyperLink NavigateUrl='<%# "DuyuruGuncelle.aspx?DuyuruID=" + Eval("DuyuruID")%>' ID="HyperLink2" runat="server" CssClass="btn btn-success">GÜNCELLE</asp:HyperLink>
                       </td>--%>
                   </tr>
                </ItemTemplate>
            </asp:Repeater>
            
            
        </tbody>
    </table>

</asp:Content>
