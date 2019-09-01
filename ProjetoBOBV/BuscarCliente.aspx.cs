using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoBOBV
{
    public partial class BuscarCliente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public SqlConnection cn = new SqlConnection(@"Data Source=APPCTX06SALLM\SQLEXPRESS;Initial Catalog=oi_internet;User ID=sa;Password=todo@2015");

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlDataAdapter da = new SqlDataAdapter("select * from tb_lancamento_euindico where protocolo_email like '" + TextBox1.Text + "%'", cn);
                DataTable dt = new DataTable();
                da.Fill(dt);
                this.GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}