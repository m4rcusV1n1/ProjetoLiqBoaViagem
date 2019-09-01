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
    public partial class MostrarVenda : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        
            SqlConnection cnx = new SqlConnection(@"Data Source=appctx06sallm\SQLEXPRESS; Initial Catalog=oi_internet; User Id=sa; Password=todo@2015;");
            cnx.Open();
            SqlDataAdapter adp = new SqlDataAdapter("  select * from tb_lancamento_euindico where resultado='venda'", cnx);
            DataSet dst = new DataSet();
            adp.Fill(dst);
            Consulta_status.DataSource = dst;
            Consulta_status.DataBind();
        }
    }
}