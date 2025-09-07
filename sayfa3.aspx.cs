using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class sayfa3_YERINE : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + Server.MapPath("App_Data\\okanDB.mdb"));
        baglanti.Open();

        string sorgu_ifadesi = "select Kimlik,ad,soyad,meslek from Veriler";
        OleDbCommand liste_getir = new OleDbCommand(sorgu_ifadesi, baglanti);
        IDataReader veri_oku = liste_getir.ExecuteReader();
        
        while (veri_oku.Read())
        {
            Response.Write("<div class='container'>");
            Response.Write(veri_oku["Kimlik"].ToString() + " " + veri_oku["ad"].ToString() + " " + veri_oku["soyad"].ToString() + " " + veri_oku["meslek"] + "<br>");
            Response.Write("</div>");
        }
    }

    
}