<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="sayfa3.aspx.cs" Inherits="sayfa3_YERINE" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


        <div class="container">
        <h2>Verileri Listele</h2>
            
    
        <table class="form-group">           
            <tr>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="Önceki Sayfa" PostBackUrl="~/Sayfa2.aspx" />
                </td>
                <td>
                    <asp:Button ID="Button3" runat="server" Text="Sonraki Sayfa" PostBackUrl="~/Sayfa4.aspx" />    
                </td>
            </tr>
        </table>
    <img src="image/3.jpg" />
    </div>
</asp:Content>

