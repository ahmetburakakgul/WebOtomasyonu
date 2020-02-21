using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace FinalProjesi
{ 
    public partial class galeriyönetimi : System.Web.UI.Page
    {
        string[] klasordekiler;
        string[] resimler;
        int sayac = 0;
        public static bool kontrol = false;
        void resimleri_al_goster()
        {
            klasordekiler = Directory.GetFiles(Server.MapPath("resimler"));
            resimler = new string[klasordekiler.Count()];
            for (int i = 0; i < klasordekiler.Count(); i++)
                resimler[i] = "resimler/" + Path.GetFileName(klasordekiler[i]);
            Image1.ImageUrl = resimler[0];
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            resimleri_al_goster();
            if (!IsPostBack)
            {
                sayac = 0;
                Session["resim"] = 0;

            }
            sayac = int.Parse(Session["resim"].ToString());
            Image1.ImageUrl = resimler[sayac];
        }

       

        protected void sil_Click(object sender, EventArgs e)
        {
            File.Delete(Server.MapPath(Image1.ImageUrl));
        }

        protected void ekle_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                lbuyarı.Text = "";
                FileUpload1.SaveAs(Server.MapPath("~/resimler/" + FileUpload1.FileName));
            }
            else
            {
                lbuyarı.Text = "Lütfen Resim Seçiniz";
            }
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
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

        protected void LinkButton1_Click(object sender, EventArgs e)
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
    }
}