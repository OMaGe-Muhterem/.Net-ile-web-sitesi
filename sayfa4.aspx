<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="sayfa4.aspx.cs" Inherits="sayfa4_YERINE" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

        <div class="container">
        <h2>4. Sayfadasınız</h2>
            
        <h4>Önceki sayfadan ilettiğiniz mesaj :</h4>
    <p>Bir önceki sayfadan bu sayfaya aktardığınız mesaj: <br /> 
        <b><asp:Label ID="gelen_mesaj" runat="server" Text="Label"></asp:Label></b>
        <br /> olup ayrıca bize, meslek adlarından seçtiğiniz
        <b><asp:Label ID="sec_meslk_goster_lb" runat="server" Text=" "></asp:Label></b> olarak görünüyor.
        
    </p>
            <hr />
        <table class="form-group">
            <tr>
                <td>
    
        Sayfaya ilk gelinen anda SAAT : <b>
                            <asp:Label ID="labust" runat="server" Text="Üst Yazı_siteye ilk girildiği AN"></asp:Label>
             </b>   

                </td>
                
            </tr>
            <tr><td>.</td>
            <td>.</td>
            </tr>
            <tr>
                <td>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="An Olarak Saati Gör" />
                </td>
                
            </tr>
            <tr>
                <td>.</td>
            </tr>
            <tr>
                <td>
        <u>Son tıkladığınız anda SAAT :</u> <asp:Label ID="labalt" runat="server" Text="Tıkladığınız andaki SAATi göreceğiniz alan"></asp:Label>
                </td>
                
            </tr>
            <tr><td>.</td></tr>
            <tr><td>.</td></tr>
            <tr>
                <td>
                    <asp:Button ID="Button3" runat="server" Text="Önceki Sayfa" PostBackUrl="~/Sayfa3.aspx"/>
                </td>
                <td>
        <asp:Button ID="Button2" runat="server" OnClick="Button1_Click" Text="Sonraki Sayfa" PostBackUrl="~/Validation_Kontroller.aspx"/>
                </td>
            </tr>
        </table>
        <p/>
<img src="image/4.jpg" />
    </div>

</asp:Content>

