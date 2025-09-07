<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="sayfa1.aspx.cs" Inherits="sayfa11" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    
    
        <div class="container">
            <h2 class="">1. Sayfa</h2>
        <br />
        <h5>Bu sayfada, iletmek istediğniz görüş ve düşüncelerinizi yazabilirsiniz</h5>
            <br />
        <asp:Label ID="Label1" runat="server" Text="Label" ></asp:Label>
        
        <table class="">
            <tr>
                
                <td class="">
        
                </td>
                <td class="">
        <asp:Label ID="ikinci_lb" runat="server" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="">İletilecek Mesaj :
        </td>
                <td class="">
        <asp:TextBox ID="iltlck_mesaj_txB" runat="server" Height="85px" Width="256px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="">
        <asp:Button ID="anasayfa_btn" runat="server" PostBackUrl="~/Index.aspx" Text="AnaSayfa" />
                </td>
                <td>
        <asp:Button ID="gonder_btn" runat="server" OnClick="Button1_Click" PostBackUrl="~/Sayfa2.aspx" Text="Gönder" />
                </td>
            </tr>           
            
        </table>
          <img src="image/1.jpg" />
    </div>
        
</asp:Content>

