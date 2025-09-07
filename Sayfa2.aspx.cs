using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string isim, soyisim;
        isim = ad_txB.Text;http://localhost:57941/App_Data/okanDB.mdb
        soyisim = soyad_txB.Text;
        string meslek = meslek_LB.Text;
        string cinsiyet = RadioButtonList1.Text;

        
        OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source="+Server.MapPath("App_Data\\okanDB.mdb"));
        baglanti.Open();

        string sorgu_ifadesi = "insert into Veriler(ad, soyad, cinsiyet, meslek) values('" + isim + "', '" + soyisim + "', '" + cinsiyet + "', '" + meslek + "')";
        OleDbCommand veri_getir = new OleDbCommand(sorgu_ifadesi, baglanti);
        int sonuc = veri_getir.ExecuteNonQuery();
        if (sonuc > 0)
            Lb_kayit.Text = isim + " " + soyisim + " " + cinsiyet + " " + meslek + " olarak girilen bilgiler başarıyla kaydedildi.";
        else
            Lb_kayit.Text = "Kayıt yapılamadı";

        baglanti.Close();
        baglanti.Dispose();


    }
}