using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sayfa11 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {  
        if (!IsPostBack) //Serverdan ileti geri post edilMEMİŞse\İlk kez sayfaya girilmişse
        {   

            ikinci_lb.Text = "Sayfama ilk kez geldiniz. Düşüncelerinizi paylaşmak ister misiniz?";
            ikinci_lb.Visible = true;
            
        }
        else { ikinci_lb.Text = " "; }
        
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = iltlck_mesaj_txB.Text;
        Label1.Visible = true;

    }
}