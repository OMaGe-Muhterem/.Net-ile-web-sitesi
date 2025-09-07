using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sayfa4_YERINE : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        gelen_mesaj.Text = Request.QueryString["mesaj"];
        sec_meslk_goster_lb.Text = "meslek bilgisi: " + Request.QueryString["secilen"] ;
        ViewState["saat"] = DateTime.Now;

        if (!IsPostBack)
        {
            labust.Text = ViewState["saat"].ToString();

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        labalt.Text = ViewState["saat"].ToString();
    }
}