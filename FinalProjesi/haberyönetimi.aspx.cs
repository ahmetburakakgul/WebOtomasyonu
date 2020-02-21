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
    public partial class haberyönetimi : System.Web.UI.Page
    {
        OleDbConnection conn = new OleDbConnection("Provider=Microsoft.Jet.OleDb.4.0;Data Source=" + HttpContext.Current.Server.MapPath("~/sporsitesi.mdb"));
        public static string kullanici { get; set; }
        DataSet ds = new DataSet();
        OleDbDataReader dr;
        int id;
        string komut;
        void vericek(string aranan)
        {
            string seckomut = aranan;
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
            if (!IsPostBack)
            {
                vericek(komut = "Select * from sporhaberleri where spordurum='onaylandı' ORDER BY haberid DESC");
            }
            else
            {
                vericek(komut = "Select * from sporhaberleri  where  haberturu='" + dptür.SelectedItem.ToString() + "' and spordurum='onaylandı' ORDER BY haberid DESC");
            }            
        }

        protected void getir_Click(object sender, EventArgs e)
        {
            string seckomut = "Select haberturu, baslik, icerik ,haberid,tarih from sporhaberleri  where  haberturu='" + dptür.SelectedItem.ToString() + "' and spordurum='onaylandı'";
            vericek(seckomut);
            tbad.Text = icerik.Text = "";
        }

        protected void Ekle_Click(object sender, EventArgs e)
        {
            tbid.Text = tbad.Text = icerik.Text = "";
            kaydet.Visible = true;
        }

        protected void sil_Click(object sender, EventArgs e)
        {
            if (conn.State == ConnectionState.Closed) conn.Open();
            OleDbCommand cmd = new OleDbCommand();
            cmd.Connection = conn;
            cmd.CommandText = "delete from sporhaberleri where haberid=@haberid";
            cmd.Parameters.AddWithValue("@haberid", int.Parse(tbid.Text));
            cmd.ExecuteNonQuery();
            conn.Close();
            vericek(komut);
            tbad.Text = "";
            tbid.Text = icerik.Text = "";
        }

        protected void duzelt_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                lbuyarı.Visible = false;
                FileUpload1.SaveAs(Server.MapPath("~/resim/" + FileUpload1.FileName));
                if (conn.State == ConnectionState.Closed) conn.Open();
                OleDbCommand cmdd = new OleDbCommand();
                cmdd.Connection = conn;
                cmdd.CommandText = "update sporhaberleri set baslik=@baslik,haberturu=@haberturu,icerik=@icerik,resim=@resim where haberid=" + int.Parse(tbid.Text) + "";
                cmdd.Parameters.AddWithValue("@baslik", tbad.Text);
                cmdd.Parameters.AddWithValue("@haberturu", dptür.SelectedItem.ToString());
                cmdd.Parameters.AddWithValue("@icerik", icerik.Text);
                if (FileUpload1.FileName != Image1.ImageUrl)
                {
                    cmdd.Parameters.AddWithValue("@resim", FileUpload1.FileName);
                }
                else
                {
                    cmdd.Parameters.AddWithValue("@resim", Image1.ImageUrl);
                }
                cmdd.ExecuteNonQuery();
                conn.Close();
                vericek(komut);
            }
            else
            {
                lbuyarı.Visible = true;
                lbuyarı.Text = "Lütfen tüm alanları doldurunuz";
            }

        }

        protected void kaydet_Click(object sender, EventArgs e)
        {
            
            if (tbad.Text == "" || icerik.Text == "")
            {
                lbuyarı.Visible = true;
                lbuyarı.Text = "Lütfen tüm alanları doldurunuz";
            }
            else
            {
                lbuyarı.Visible = false;
                FileUpload1.SaveAs(Server.MapPath("~/resim/" + FileUpload1.FileName));
                if (ConnectionState.Closed == conn.State) conn.Open();
                OleDbCommand cmd = new OleDbCommand();
                cmd.Connection = conn;
                cmd.CommandText = "insert into sporhaberleri(baslik,haberturu,icerik,tarih,spordurum,resim) Values(@baslik,@haberturu,@icerik,@tarih,@spordurum,@resim)";
                cmd.Parameters.AddWithValue("@baslik", tbad.Text);
                cmd.Parameters.AddWithValue("@haberturu", dptür.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@icerik", icerik.Text);
                cmd.Parameters.AddWithValue("@tarih", DateTime.Now.ToLongDateString());
                cmd.Parameters.AddWithValue("@spordurum", "onaylandı");
                cmd.Parameters.AddWithValue("@resim", FileUpload1.FileName);
                cmd.ExecuteNonQuery();
                //html yüzünden hata verdi source en üst satırda (ValidateRequest="false") yazdık
                conn.Close();
                vericek(komut);
                kaydet.Visible = false;
            }
        }
        

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            vericek(komut);
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int kayitno = GridView1.SelectedIndex + GridView1.PageIndex * GridView1.PageSize;
            tbad.Text = ds.Tables[0].Rows[kayitno]["baslik"].ToString();
            dptür.Text = ds.Tables[0].Rows[kayitno]["haberturu"].ToString();
            icerik.Text = ds.Tables[0].Rows[kayitno]["icerik"].ToString();
            tbid.Text = ds.Tables[0].Rows[kayitno]["haberid"].ToString();
            Image1.ImageUrl = "resim/" + ds.Tables[0].Rows[kayitno]["resim"].ToString();
        }
    }
}