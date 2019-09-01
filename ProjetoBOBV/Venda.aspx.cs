using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoBOBV
{
    public partial class Venda : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            SqlConnection conn = new SqlConnection(@"Data Source=appctx06sallm\SQLEXPRESS; Initial Catalog=oi_internet; User Id=sa; Password=todo@2015;");

            SqlCommand comm = new SqlCommand("select * from tb_lancamento_euindico where id='" + id + "'", conn);

            /* Aqui no CommandType tem que definir se vai utilizar uma Stored Procedure ou uma query */
            //comm.CommandType = CommandType.StoredProcedure; /* Quando usa SP's */
            /* ou */
            comm.CommandType = CommandType.Text; /* Quando usa Query */

            /* paramentros do banco*/

            comm.Parameters.Add(new SqlParameter("@id", "id"));
            comm.Parameters.Add(new SqlParameter("@DataEmail", "DataEmail"));
            comm.Parameters.Add(new SqlParameter("@IdColaborador", "IdColaborador"));
            comm.Parameters.Add(new SqlParameter("@TelefoneColaborador", "TelefoneColaborador"));
            comm.Parameters.Add(new SqlParameter("@EmailColaborador", "EmailColaborador"));
            comm.Parameters.Add(new SqlParameter("@NomeCliente", "NomeCliente"));
            comm.Parameters.Add(new SqlParameter("@NomeColaborador", "NomeColaborador"));
            comm.Parameters.Add(new SqlParameter("@TelefoneCliente", "TelefoneCliente"));
            comm.Parameters.Add(new SqlParameter("@CPFCliente", "CPFCliente"));
            comm.Parameters.Add(new SqlParameter("@EmailCliente", "EmailCliente"));
            comm.Parameters.Add(new SqlParameter("@UFCliente", "UFCliente"));
            comm.Parameters.Add(new SqlParameter("@CidadeCliente", "CidadeCliente"));
            comm.Parameters.Add(new SqlParameter("@OutrasInformacoes", "OutrasInformacoes"));
            comm.Parameters.Add(new SqlParameter("@ProdutoInteresse", "ProdutoInteresse"));
            comm.Parameters.Add(new SqlParameter("@ProtocoloEmail", "ProtocoloEmail"));
            comm.Parameters.Add(new SqlParameter("@status_marcacao", "status_marcacao"));
            comm.Parameters.Add(new SqlParameter("@dt_contato", "dt_contato"));
            comm.Parameters.Add(new SqlParameter("@hr_contato", "hr_contato"));
            comm.Parameters.Add(new SqlParameter("@resultado", "resultado"));
            comm.Parameters.Add(new SqlParameter("@sub_motivo", "sub_motivo"));
            comm.Parameters.Add(new SqlParameter("@produto_solicitado", "produto_solicitado"));
            comm.Parameters.Add(new SqlParameter("@itens_vendidos", "itens_vendidos"));
            comm.Parameters.Add(new SqlParameter("@mensalidade_produto", "mensalidade_produto"));
            comm.Parameters.Add(new SqlParameter("@dt_venda", "dt_venda"));
            comm.Parameters.Add(new SqlParameter("@cpf_venda", "cpf_venda"));
            comm.Parameters.Add(new SqlParameter("@os", "os"));
            comm.Parameters.Add(new SqlParameter("@dt_agendamento", "dt_agendamento"));
            comm.Parameters.Add(new SqlParameter("@MSISDN", "MSISDN"));
            comm.Parameters.Add(new SqlParameter("@observacao", "observacao"));


            conn.Open();
            DbDataReader dr = comm.ExecuteReader();
            while (dr.Read())
            {
                /* dados do banco x text box */
                txtid.Text = dr["id"].ToString();
                txtdtemail.Text = dr["dt_email"].ToString();
                txtidcolaborador.Text = dr["id_colaborador"].ToString();
                txttelefonecolaborador.Text = dr["tel_colaborador"].ToString();
                txtemailcolaborador.Text = dr["email_colaborador"].ToString();
                txtnomecliente.Text = dr["nome_cliente"].ToString();
                txtnomecolaborador.Text = dr["nome_colaborador"].ToString();
                txttelcliente.Text = dr["tel_cliente"].ToString();
                txtcpfcliente.Text = dr["cpf_cliente"].ToString();
                txtemailcliente.Text = dr["email_cliente"].ToString();
                txtufcliente.Text = dr["uf_cliente"].ToString();
                txtcidadecliente.Text = dr["cidade_cliente"].ToString();
                txtinformacoes.Text = dr["outr_infor_cliente"].ToString();
                txtproduto.Text = dr["produto_cliente"].ToString();
                txtprotocolo.Text = dr["protocolo_email"].ToString();
                txtstatus.Text = dr["status_marcacao"].ToString();
                txtdtcontato.Text = dr["dt_contato"].ToString();
                txttime.Text = dr["hr_contato"].ToString();
                txtresultado.Text = dr["resultado"].ToString();
                txtsubmotivo.Text = dr["sub_motivo"].ToString();
                txtprodutosolicitado.Text = dr["produto_solicitado"].ToString();
                txtitensvendidos.Text = dr["itens_vendidos"].ToString();
                txtmensalidade.Text = dr["mensalidade_produto"].ToString();
                txtdatavenda.Text = dr["dt_venda"].ToString();
                txtcpfvenda.Text = dr["cpf_venda"].ToString();
                txtos.Text = dr["os"].ToString();
                txtdataagendamento.Text = dr["dt_agendamento"].ToString();
                txtmsisdn.Text = dr["MSISDN"].ToString();
                txtob.Text = dr["observacao"].ToString();



            }
            conn.Close();
            //fim do parametro para pouplar dados pessoais


        }
    }
    }
