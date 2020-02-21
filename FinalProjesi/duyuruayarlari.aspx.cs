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
    public partial class duyuruayarlari : System.Web.UI.Page
    {
        OleDbConnection conn = new OleDbConnection("Provider=Microsoft.Jet.OleDb.4.0;Data Source=" + HttpContext.Current.Server.MapPath("~/sporsitesi.mdb"));
        public static string kullanici { get; set; }
        DataSet ds = new DataSet();
        void vericek()
        {
            string seckomut = "Select * from duyuru  where duyuruid ORDER BY duyuruid DESC";
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

        protected void ekle_Click(object sender, EventArgs e)
        {
            tbid.Text = baslik.Text = icerik.Text = "";
            kaydet.Visible = true;
        }

        protected void sil_Click(object sender, EventArgs e)
        {
            if (conn.State == ConnectionState.Closed) conn.Open();
            OleDbCommand cmd = new OleDbCommand();
            cmd.Connection = conn;
            cmd.CommandText = "delete  from duyuru where duyuruid=@duyuruid";
            cmd.Parameters.AddWithValue("@duyuruid", int.Parse(tbid.Text));
            cmd.ExecuteNonQuery();
            conn.Close();
            vericek();
            baslik.Text = "";
            tbid.Text = icerik.Text = "";
        }

        protected void duzelt_Click(object sender, EventArgs e)
        {

            if (conn.State == ConnectionState.Closed) conn.Open();
            OleDbCommand cmdd = new OleDbCommand();
            cmdd.Connection = conn;
            cmdd.CommandText = "update duyuru set baslik=@baslik,aciklama=@aciklama, yayinda=@yayindas where duyuruid=" + int.Parse(tbid.Text) + "";
            cmdd.Parameters.AddWithValue("@baslik", baslik.Text);
            cmdd.Parameters.AddWithValue("@aciklama", icerik.Text);
            cmdd.Parameters.AddWithValue("@yayinda", cbyayinlansin.Checked);
            cmdd.ExecuteNonQuery();
            conn.Close();
            vericek();   
        }

        protected void kaydet_Click(object sender, EventArgs e)
        {
            if (baslik.Text == "" || icerik.Text == "")
            {
                lbuyarı.Visible = true;
                lbuyarı.Text = "Lütfen tüm alanları doldurunuz";
            }
            else
            {
                lbuyarı.Visible = false;

                if (ConnectionState.Closed == conn.State) conn.Open();
                OleDbCommand cmd = new OleDbCommand();

                cmd.Connection = conn;

                cmd.CommandText = "insert into duyuru(baslik,aciklama,yayinda) Values(@baslik,@aciklama,@yayinda)";

                cmd.Parameters.AddWithValue("@baslik", baslik.Text);
                cmd.Parameters.AddWithValue("@aciklama", icerik.Text);
                cmd.Parameters.AddWithValue("@yayinda", cbyayinlansin.Checked);
                cmd.ExecuteNonQuery();
                //html yüzünden hata verdi source en üst satırda (ValidateRequest="false") yazdık
                conn.Close();
                vericek();

                kaydet.Visible = false;
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int kayitno = GridView1.SelectedIndex + GridView1.PageIndex * GridView1.PageSize;
            baslik.Text = ds.Tables[0].Rows[kayitno]["baslik"].ToString();
            icerik.Text = ds.Tables[0].Rows[kayitno]["aciklama"].ToString();
            tbid.Text = ds.Tables[0].Rows[kayitno]["duyuruid"].ToString();
        }
    }
}