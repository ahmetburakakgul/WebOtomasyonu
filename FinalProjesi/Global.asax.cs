using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Data.OleDb;
using System.Data;

namespace FinalProjesi
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            Application["ziyaretci"] = 0;
          
           
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            Application.Lock();
            Application["ziyaretci"] = (int)Application["ziyaretci"] + 1;
            Application.UnLock();
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {
            string sorgu = "insert into ziyaretcisayi (ip) Values (@ip)";
            OleDbConnection conn = new OleDbConnection("Provider=Microsoft.Jet.OleDb.4.0;Data Source=" + HttpContext.Current.Server.MapPath("~/sporsitesi.mdb"));
            OleDbCommand komut = new OleDbCommand(sorgu, conn);
            conn.Open();
            komut.Parameters.AddWithValue("@ip", Request.ServerVariables["REMOTE_ADDR"].ToString()); // kullanıcının ip adresini alır
            komut.ExecuteNonQuery();
            conn.Close();
        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {
            Application.Lock();
            Application["ziyaretci"] = (int)Application["ziyaretci"] - 1;
            Application.UnLock();
        }

        protected void Application_End(object sender, EventArgs e)
        {
            Application.Remove("ziyaretci");
        }
    }
}