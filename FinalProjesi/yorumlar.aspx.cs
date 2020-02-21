using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.Text;

namespace FinalProjesi
{
    public partial class yorumlar : System.Web.UI.Page
    {
        OleDbConnection conn = new OleDbConnection("Provider=Microsoft.Jet.OleDb.4.0;Data Source=" + HttpContext.Current.Server.MapPath("~/sporsitesi.mdb"));
        public static StringBuilder icerik = new StringBuilder();
        DataSet ds = new DataSet();
        OleDbDataReader dr;
        public string kul, ta, ice, kul1, ta1, ice1, kul2, ta2, ice2, kul3, ta3, ice3, kul4, ta4, ice4, kul5, ta5, ice5, kul6, ta6, ice6, kul7, ta7, ice7, kul8, ta8, ice8, kul9, ta9, ice9,yid; 
        public int sporid, sporid2;
        public string resim;
        void vericek()
        {

            int i = 1;
            OleDbCommand cmd = new OleDbCommand();
            string sorgu = "select u.uyekullanıcıadi,s.mesaj,s.sizdentarih,s.yorumid from sizdengelenler as[s], uye as [u] where s.uyeid = u.uyeid and durum='onaylandı' ORDER BY s.yorumid DESC";
            cmd = new OleDbCommand(sorgu, conn);
            if (conn.State == ConnectionState.Closed) conn.Open();
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                if (i == 1)
                {
                    kul = dr["uyekullanıcıadi"].ToString();
                    ta = dr["sizdentarih"].ToString();                   
                    ice = dr["mesaj"].ToString();
                    yid = dr["yorumid"].ToString();
                }
                else if (i == 2)
                {
                    kul1 = dr["uyekullanıcıadi"].ToString();
                    ta1 = dr["sizdentarih"].ToString();
                    ice1 = dr["mesaj"].ToString();
                    
                }
                else if (i == 3)
                {
                    kul2 = dr["uyekullanıcıadi"].ToString();
                    ta2 = dr["sizdentarih"].ToString();
                    ice2 = dr["mesaj"].ToString();
                   
                }
                else if (i == 4)
                {
                    kul3 = dr["uyekullanıcıadi"].ToString();
                    ta3 = dr["sizdentarih"].ToString();
                    ice3 = dr["mesaj"].ToString();
                    
                }
                else if (i == 5)
                {
                    kul4 = dr["uyekullanıcıadi"].ToString();
                    ta4 = dr["sizdentarih"].ToString();
                    ice4 = dr["mesaj"].ToString();
                    
                }
                else if (i == 6)
                {
                    kul5 = dr["uyekullanıcıadi"].ToString();
                    ta5 = dr["sizdentarih"].ToString();
                    ice5 = dr["mesaj"].ToString();
                   
                }
                else if (i == 7)
                {
                    kul6 = dr["uyekullanıcıadi"].ToString();
                    ta6 = dr["sizdentarih"].ToString();
                    ice6 = dr["mesaj"].ToString();

                }
                else if (i == 8)
                {
                    kul7 = dr["uyekullanıcıadi"].ToString();
                    ta7 = dr["sizdentarih"].ToString();
                    ice7 = dr["mesaj"].ToString();
                }
                else if (i == 9)
                {
                    kul8 = dr["uyekullanıcıadi"].ToString();
                    ta8 = dr["sizdentarih"].ToString();
                    ice8 = dr["mesaj"].ToString();
                }
                else if (i == 10)
                {
                    kul9 = dr["uyekullanıcıadi"].ToString();
                    ta9 = dr["sizdentarih"].ToString();
                    ice9 = dr["mesaj"].ToString();

                }
                i++;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            vericek();
        }
    }
}