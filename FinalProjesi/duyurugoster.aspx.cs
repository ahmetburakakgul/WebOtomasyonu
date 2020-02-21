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
    public partial class duyurugoster : System.Web.UI.Page
    {
        public string tutbaslik;
        OleDbConnection conn = new OleDbConnection("Provider=Microsoft.Jet.OleDb.4.0;Data Source=" + HttpContext.Current.Server.MapPath("~/sporsitesi.mdb"));
        public StringBuilder tuticerik = new StringBuilder();
        protected void Page_Load(object sender, EventArgs e)
        {

            conn.Open();
            DataSet ds = new DataSet();
            string gelenid = Request.QueryString["duyuruid"].ToString();
            string sec = "select * from duyuru where duyuruid=" + gelenid;
            OleDbDataAdapter da = new OleDbDataAdapter(sec, conn);
            da.Fill(ds, "duyuru");
            if (ds.Tables["duyuru"].Rows.Count > 0)
            {
                tutbaslik = ds.Tables["duyuru"].Rows[0]["baslik"].ToString();
                tuticerik.Append(ds.Tables["duyuru"].Rows[0]["aciklama"].ToString());
            }
        }
    }
}