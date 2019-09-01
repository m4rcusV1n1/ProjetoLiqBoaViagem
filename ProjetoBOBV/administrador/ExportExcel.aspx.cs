using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoBOBV.administrador
{
    public partial class ExportExcel : System.Web.UI.Page
    {
        public DataTable CarregaDados()
        {
            string conString = @"Data Source=10.49.12.24;Initial Catalog=Oi_Internet;User ID=usr_ctx_oi;Password=oiinternet";
            DataTable dt = new DataTable();

            using (SqlConnection connection = new SqlConnection(conString))
            {
                using (SqlCommand command = new SqlCommand())
                {

                    string data = DateTime.Now.ToString();
                    command.Connection = connection;
                    command.CommandText = "SELECT * FROM tb_lancamento_euindico WHERE Cast(dt_contato as Datetime) BETWEEN '" + txtdataini.Text + "' and '" + txtdatafim.Text + "'";
                    using (SqlDataAdapter adapter = new SqlDataAdapter())
                    {
                        adapter.SelectCommand = command;
                        adapter.Fill(dt);


                    }
                }
            }

            return dt;
        }
        protected void relatorio_excel(object sender, EventArgs e)
        {
            Response.Redirect("exporta_exceladm.aspx");
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = CarregaDados();
            Session.Add("Contatos2Excel", dt);
        }

    }
}