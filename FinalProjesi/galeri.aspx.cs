using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace FinalProjesi
{
    public partial class galeri : System.Web.UI.Page
    {
        public static bool kontrol = false;
        string[] klasordekiler;
        string[] resimler;
        int sayac = 0;
        void resimleri_al_goster()
        {
            klasordekiler = Directory.GetFiles(Server.MapPath("resimler"));
            // Response.Write(klasordekiler[0]);
            resimler = new string[klasordekiler.Count()];//Resimler içindeki eleman sayısı 
            for (int i = 0; i < klasordekiler.Count(); i++)
                resimler[i] = "resimler/" + Path.GetFileName(klasordekiler[i]);
            // Response.Write("<br>" resimler[0]);
            Image1.ImageUrl = resimler[0];
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            resimleri_al_goster();
            if (!IsPostBack)
            {

                sayac = 0;
                Session["resim"] = 0;
                Timer1.Enabled = false;

            }
            sayac = int.Parse(Session["resim"].ToString());
            Image1.ImageUrl = resimler[sayac];
            Timer1.Enabled = true;
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            sayac = int.Parse(Session["resim"].ToString());
            if (sayac == 0)
            {
                sayac = klasordekiler.Count();

            }
            sayac--;
            Image1.ImageUrl = resimler[sayac];
            Session["resim"] = sayac;
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            sayac = int.Parse(Session["resim"].ToString());
            sayac++;
            if (sayac == klasordekiler.Count())
            {
                sayac = 0;

            }
            Image1.ImageUrl = resimler[sayac];
            Session["resim"] = sayac;
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            sayac = int.Parse(Session["resim"].ToString());
            sayac++;
            if (sayac == klasordekiler.Count())
            {
                sayac = 0;
            }
            Image1.ImageUrl = resimler[sayac];
            Session["resim"] = sayac;
        }
    }
}