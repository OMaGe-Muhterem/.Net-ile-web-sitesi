<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Validation_Kontroller.aspx.cs" Inherits="Validation_KONTROLLER" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

            <div class="container">
            <h1>İletişim</h1>
        <table class="form-group">
            <tr>
                <td class="">Adınız:</td>
                <td>
                    <asp:TextBox ID="kutuAdi" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="kutuAdi" ErrorMessage="Adınızı Girmediniz." ForeColor="#FF0066" ValidationGroup="aa">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="">E-Posta:</td>
                <td>
                    <asp:TextBox ID="kutuEposta" runat="server" Width="254px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="kutuEposta" ErrorMessage="E-Posta Giriniz" ForeColor="#FF0066" ValidationGroup="aa">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="kutuEposta" ErrorMessage="Hatalı E-Posta" ForeColor="#FF0066" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="aa">*</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="">Parola:</td>
                <td>
                    <asp:TextBox ID="kutuParola" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="kutuParola" ErrorMessage="Parola giriniz" ForeColor="#FF0066" ValidationGroup="aa">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="">Parola Tekrar:</td>
                <td>
                    <asp:TextBox ID="kutuParola2" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="kutuParola2" ErrorMessage="Parolayı tekrar giriniz" ForeColor="#FF0066" ValidationGroup="aa">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="kutuParola" ControlToValidate="kutuParola2" ErrorMessage="Parolalar eşleşmiyor" ForeColor="#FF0066" ValidationGroup="aa">*</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="">Yaşınız:</td>
                <td>
                    <asp:TextBox ID="kutuYasi" runat="server" Width="60px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="kutuYasi" ErrorMessage="Yaşınızı Giriniz" ForeColor="#FF0066" ValidationGroup="aa">*</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="kutuYasi" ErrorMessage="Yaþýnýzý doðru giriniz." ForeColor="#FF0066" MaximumValue="150" MinimumValue="0" ValidationGroup="aa">*</asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="">Mesajınız:</td>
                <td>
                    <asp:TextBox ID="kutuMesaj" runat="server" Height="126px" TextMode="MultiLine" Width="267px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="kutuMesaj" ErrorMessage="Mesaj Yazınız." ForeColor="#FF0066" ValidationGroup="aa">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Gönder" ValidationGroup="aa" />
                </td>
            </tr>
            <tr>
                <td >
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#FF0066" HeaderText="Şu Hatalar Oluştu:" ValidationGroup="aa" />
                </td>
            </tr>

            <tr><td>.</td></tr>
            <tr><td>.</td></tr>
            <tr>
                <td>
                    <asp:Button ID="Button3" runat="server" Text="Önceki Sayfa" PostBackUrl="~/Sayfa4.aspx"/>
                </td>
                <td>
        <asp:Button ID="Button2" runat="server" Text="Sonraki Sayfa" PostBackUrl="~/Index.aspx"/>
                </td>
            </tr>
        </table>

        </div>
</asp:Content>

