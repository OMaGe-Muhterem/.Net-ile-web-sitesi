<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
    
        <h1>AnaSayfa</h1>
        <table class="form-group">
            <tr>
                <td><strong>Ad = </strong> </td>
                <td>  <asp:TextBox ID="ad_txB" AutoPostBack="true" OnTextChanged="Button1_Click" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td> <strong>Soyad =  </strong>  </td>
                <td>   <asp:TextBox ID="soyad_txB" AutoPostBack="true" OnTextChanged="Button1_Click" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr></tr>
            <tr>               
                <td>   
        <asp:Button ID="giris_txB" runat="server" OnClick="Button1_Click" Text="Giriş"   />
                    </td>
                <td>
        <asp:Button ID="harika_diyar_btn" runat="server" Text="Harikalar Diyârı" PostBackUrl="~/Sayfa1.aspx" />
                </td>
            </tr>
                        
        </table>
       <hr />
        <strong>
        <asp:Label ID="hosgeldin" runat="server" ForeColor="#0066FF"></asp:Label>
        </strong><br/><br />
        <p>Pamukkale Üniversitesi Denizli Teknik Bilimler Meslek Yüksekokulu Bilgisayar Programcılığı bölümünün<br />
                internet programcılığı-2 dersine ait Final Proje Ödevi için hazırlanan siteyi inceliyorsunuz.  
            </p>
         <img src="image/1.jpg" />
    </div>


</asp:Content>

