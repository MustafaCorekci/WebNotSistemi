<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GirisPaneli.aspx.cs" Inherits="WebNotSistemi.GirisPaneli" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <title></title>
    <style type="text/css">
        .auto-style1 {
            display: block;
            padding: 6px 12px;
            font-size: 14px;
            line-height: 1.42857143;
            color: #555;
            background-color: #fff;
            background-image: none;
            border: 1px solid #ccc;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
        }
        .auto-style2 {
            color: #FFFFFF;
        }
        .auto-style3 {
            height: 969px;
        }
    </style>
</head>
<body>

    <link href="Dosyalar1/bootstrap.min.css" rel="stylesheet" />

    <form id="form1" runat="server" class="auto-style3" style="background-image: url('background.jpg')">
        <div style="width: 700px; margin: auto">
            <div class="text-center">
                <br />
                <h1 class="auto-style2">Öğrenci Not Sistemi</h1>
            </div>
            <br />
            <br />
            <br />
            <div class="text-center">
                <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl="~/Ogrenci.jpg" Width="200px" />
            </div>
            <br />
            <br />
            <br />
            <div>
                <strong>
                <asp:Label for="txtNumara" ID="Label2" runat="server" CssClass="auto-style2">Numara</asp:Label>
                </strong>
                <asp:TextBox ID="txtNumara" runat="server" CssClass="auto-style1" Width="700px"></asp:TextBox>
            </div>
            <br />
            <div>
                <strong>
                <asp:Label for="txtSifre" ID="Label1" runat="server" CssClass="auto-style2">Şifre</asp:Label>
                </strong>
                <asp:TextBox ID="txtSifre" runat="server" CssClass="auto-style1" Width="700px" TextMode="Password"></asp:TextBox>
            </div>
            <br />
            <asp:Button ID="btnGirisYap" runat="server" Text="Giriş Yap" CssClass="btn btn-warning" Width="700px" OnClick="btnGirisYap_Click" />
            <br />
            <br />
            <asp:Button ID="btnOgretmenGiris" runat="server" Text="Öğretmen Girişi" CssClass="btn btn-danger" Width="200px" OnClick="btnOgretmenGiris_Click" />
            <asp:Button ID="btnSifremiUnuttum" runat="server" Text="Şifremi Unuttum" CssClass="btn btn-default" Width="300px" />
            <asp:Button ID="btnYardim" runat="server" Text="Yardım" CssClass="btn btn-info" Width="190px" />

        </div>
    </form>
</body>
</html>
