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
    public partial class puandurumudüzenle : System.Web.UI.Page
    {
        OleDbConnection conn = new OleDbConnection("Provider=Microsoft.Jet.OleDb.4.0;Data Source=" + HttpContext.Current.Server.MapPath("~/sporsitesi.mdb"));
        public static string kullanici { get; set; }
        DataSet ds = new DataSet();
        void vericek()
        {
            string seckomut = "Select * from puandurumu  where siraid";
            ds.Clear();
            if (conn.State == ConnectionState.Closed) conn.Open();
            OleDbDataAdapter da = new OleDbDataAdapter(seckomut, conn);
            da.SelectCommand.ExecuteNonQuery();
            da.Fill(ds);
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
            conn.Close();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            vericek();
            kaydet.Visible = false;
        }       
       

      

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int kayitno = GridView1.SelectedIndex + GridView1.PageIndex * GridView1.PageSize;
            ad.Text = ds.Tables[0].Rows[kayitno]["takimadi"].ToString();
            puan.Text = ds.Tables[0].Rows[kayitno]["puan"].ToString();
            tbid.Text = ds.Tables[0].Rows[kayitno]["siraid"].ToString();
            omac.Text = ds.Tables[0].Rows[kayitno]["oynananmac"].ToString();
            galibiyet.Text = ds.Tables[0].Rows[kayitno]["galibiyet"].ToString();
            beraber.Text = ds.Tables[0].Rows[kayitno]["beraberlik"].ToString();
            mag.Text = ds.Tables[0].Rows[kayitno]["maglubiyet"].ToString();
            ag.Text = ds.Tables[0].Rows[kayitno]["atılangol"].ToString();
            yg.Text = ds.Tables[0].Rows[kayitno]["yenilengol"].ToString();
            averaj.Text = ds.Tables[0].Rows[kayitno]["averaj"].ToString();
           
            
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            vericek();
        }

        protected void ekle_Click1(object sender, EventArgs e)
        {
            tbid.Text = ad.Text = puan.Text = ag.Text = yg.Text = averaj.Text = omac.Text = galibiyet.Text = beraber.Text = mag.Text = "";
            kaydet.Visible = true;
        }

        protected void sil_Click1(object sender, EventArgs e)
        {
            if (conn.State == ConnectionState.Closed) conn.Open();
            OleDbCommand cmd = new OleDbCommand();
            cmd.Connection = conn;
            cmd.CommandText = "delete  from puandurumu where siraid=@siraid";
            cmd.Parameters.AddWithValue("@siraid", int.Parse(tbid.Text));
            cmd.ExecuteNonQuery();
            conn.Close();
            vericek();
            tbid.Text = ad.Text = puan.Text = ag.Text = yg.Text = averaj.Text = omac.Text = galibiyet.Text = beraber.Text = mag.Text = "";
        }

        protected void duzelt_Click1(object sender, EventArgs e)
        {
            if (conn.State == ConnectionState.Closed) conn.Open();
            OleDbCommand cmdd = new OleDbCommand();
            cmdd.Connection = conn;
            cmdd.CommandText = "update puandurumu set takimadi=@takimadi,puan=@puan,oynananmac=@oynananmac,galibiyet=@galibiyet,beraberlik=@beraberlik,maglubiyet=@maglubiyet,atılangol=@atılangol,yenilengol=@yenilengol,averaj=@averaj where siraid=" + int.Parse(tbid.Text) + "";
            cmdd.Parameters.AddWithValue("@takimadi", ad.Text);
            cmdd.Parameters.AddWithValue("@puan", puan.Text);
            cmdd.Parameters.AddWithValue("@oynananmac", omac.Text);
            cmdd.Parameters.AddWithValue("@galibiyet", galibiyet.Text);
            cmdd.Parameters.AddWithValue("@maglubiyet", mag.Text);
            cmdd.Parameters.AddWithValue("@beraberlik", beraber.Text);
            cmdd.Parameters.AddWithValue("@atılangol", ag.Text);
            cmdd.Parameters.AddWithValue("@yenilengol", yg.Text);
            cmdd.Parameters.AddWithValue("@averaj", averaj.Text);
            cmdd.ExecuteNonQuery();
            conn.Close();
            vericek(); 
        }

        protected void kaydet_Click1(object sender, EventArgs e)
        {
            if (ad.Text == "" || puan.Text == "")
            {
                lbuyarı.Visible = true;
                lbuyarı.Text = "Lütfen tüm alanları doldurunuz";
            }
            else
            {
                lbuyarı.Visible = false;

                if (ConnectionState.Closed == conn.State) conn.Open();
                OleDbCommand cmdd = new OleDbCommand();

                cmdd.Connection = conn;

                cmdd.CommandText = "insert into puandurumu(takimadi,puan,oynananmac,galibiyet,beraberlik,maglubiyet,atılangol,yenilengol,averaj) Values(@takimadi,@puan,@oynananmac,@galibiyet,@beraberlik,@maglubiyet,@atılangol,@yenilengol,@averaj)";

                cmdd.Parameters.AddWithValue("@takimadi", ad.Text);
                cmdd.Parameters.AddWithValue("@puan", puan.Text);
                cmdd.Parameters.AddWithValue("@oynananmac", omac.Text);
                cmdd.Parameters.AddWithValue("@galibiyet", galibiyet.Text);
                cmdd.Parameters.AddWithValue("@maglubiyet", mag.Text);
                cmdd.Parameters.AddWithValue("@beraberlik", beraber.Text);
                cmdd.Parameters.AddWithValue("@atılangol", ag.Text);
                cmdd.Parameters.AddWithValue("@yenilengol", yg.Text);
                cmdd.Parameters.AddWithValue("@averaj", averaj.Text);
                cmdd.ExecuteNonQuery();
                //html yüzünden hata verdi source en üst satırda (ValidateRequest="false") yazdık
                conn.Close();
                vericek();

                kaydet.Visible = false;
            }
        }
    }
}