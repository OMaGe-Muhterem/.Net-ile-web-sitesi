using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {   harika_diyar_btn.Visible = false;
        giris_txB.PostBackUrl = "";
    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {   if(hosgeldin.Text != "")
        { 
        harika_diyar_btn.Visible = true;
            giris_txB.PostBackUrl = "~/Sayfa1.aspx";
        hosgeldin.Text = "Sayın " + ad_txB.Text + " " + soyad_txB.Text + " web sitemize Hoşgeldiniz... ";      
        }      
        else
        hosgeldin.Text = "Önce kullanıcı adınızı ve soyadınızı girmelisiniz";
        
    }

   
}