using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoBOBV
{
    public partial class Cadastrarmailing : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtsalvar_Click(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("INSERT INTO tb_lancamento_euindico (codigo_mailing, dt_email, canal_entrada, protocolo_email, nome_colaborador, id_colaborador, tel_colaborador, email_colaborador, cpf_colaborador, nome_cliente, tel_cliente, cpf_cliente, email_cliente, uf_cliente, cidade_cliente, produto_cliente, outr_infor_cliente, resultado, status) values (@codigo_mailing, @dt_email, @canal_entrada, @protocolo_email, @nome_colaborador, @id_colaborador, @tel_colaborador, @email_colaborador, @cpf_colaborador, @nome_cliente, @tel_cliente, @cpf_cliente, @email_cliente, @uf_cliente, @cidade_cliente, @produto_cliente, @outr_infor_cliente, @resultado, @status)"))
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = con;
                    con.Open();
                    string resultado = "Em tratamento";
                    string status = "1";
                    cmd.Parameters.AddWithValue("codigo_mailing", txtid.Text);
                    cmd.Parameters.AddWithValue("dt_email", txtdtemail.Text);
                    cmd.Parameters.AddWithValue("canal_entrada", canalentrada.Text);
                    cmd.Parameters.AddWithValue("protocolo_email", txtprotocolo.Text);
                    cmd.Parameters.AddWithValue("nome_colaborador", txtnomecolaborador.Text);
                    cmd.Parameters.AddWithValue("id_colaborador", txtidcolaborador.Text);
                    cmd.Parameters.AddWithValue("tel_colaborador", txttelefonecolaborador.Text);
                    cmd.Parameters.AddWithValue("email_colaborador", txtemailcolaborador.Text);
                    cmd.Parameters.AddWithValue("cpf_colaborador", txtcpf.Text);
                    cmd.Parameters.AddWithValue("nome_cliente", txtnomecliente.Text);
                    cmd.Parameters.AddWithValue("tel_cliente", txttelcliente.Text);
                    cmd.Parameters.AddWithValue("cpf_cliente", txtcpfcliente.Text);
                    cmd.Parameters.AddWithValue("email_cliente", txtemailcliente.Text);
                    cmd.Parameters.AddWithValue("uf_cliente", ufcliente.Text);
                    cmd.Parameters.AddWithValue("cidade_cliente", cidadecliente1.Text);
                    cmd.Parameters.AddWithValue("produto_cliente", produto.Text);
                    cmd.Parameters.AddWithValue("outr_infor_cliente", txtinformacoes.Text);
                    cmd.Parameters.AddWithValue("resultado", resultado);
                    cmd.Parameters.AddWithValue("status", status);

                    con.Close();
                    try
                    {
                        con.Open();
                        if (cmd.ExecuteNonQuery() > -1)
                        {
                            Response.Write("<script type='text/javascript'>alert('Mailing Cadatrado com Sucesso');</script>");
                            txtid.Text = "";
                            txtidcolaborador.Text = "";
                            txtdtemail.Text = "";
                            canalentrada.Text = "";
                            txtprotocolo.Text = "";
                            txtinformacoes.Text = "";
                            produto.Text = "";
                            cidadecliente1.Text = "";
                            ufcliente.Text = "";
                            txtemailcliente.Text = "";
                            txtcpfcliente.Text = "";
                            txttelcliente.Text = "";
                            txtemailcolaborador.Text = "";
                            txtnomecliente.Text = "";
                            txttelefonecolaborador.Text = "";
                        }
                    }
                    catch (Exception ex)
                    {

                        Response.Write("<script type='text/javascript'>alert('Erro ao Cadastrar Mailing.\n');</script>" + ex.Message);
                    }

                    finally
                    {
                        con.Close();
                    }




                }
            }
        }
    }
}