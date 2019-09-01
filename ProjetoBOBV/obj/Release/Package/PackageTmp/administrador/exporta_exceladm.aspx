<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="exporta_exceladm.aspx.cs" Inherits="ProjetoBOBV.administrador.exporta_exceladm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
        <h1>Relatorio Back Office</h1>
        <asp:GridView ID="gridContatos" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" AutoGenerateColumns="False">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="codigo_mailing" HeaderText="Código do Mailing"/>
                <asp:BoundField DataField="dt_email" HeaderText="Data do Email" />
                <asp:BoundField DataField="canal_entrada" HeaderText="Canal de Entrada" />
                <asp:BoundField DataField="protocolo_email" HeaderText="Protocolo do Email" />
                <asp:BoundField DataField="nome_colaborador" HeaderText="Nome do Colaborador" />
                <asp:BoundField DataField="id_colaborador" HeaderText="Id do Colaborador" />
                <asp:BoundField DataField="tel_colaborador" HeaderText="Telefone do Colaborador" />
                <asp:BoundField DataField="email_colaborador" HeaderText="Email do Colaborador" />
                <asp:BoundField DataField="nome_cliente" HeaderText="Nome do Cliente" />
                <asp:BoundField DataField="tel_cliente" HeaderText="Telefone do Cliente" />
                <asp:BoundField DataField="cpf_cliente" HeaderText="CPF do Cliente" />
                <asp:BoundField DataField="email_cliente" HeaderText="Email do Cliente" />
                <asp:BoundField DataField="uf_cliente" HeaderText="UF do Cliente" />
                <asp:BoundField DataField="cidade_cliente" HeaderText="Cidade do Cliente" />
                <asp:BoundField DataField="produto_cliente" HeaderText="Produto do Cliente" />
                <asp:BoundField DataField="outr_infor_cliente" HeaderText="Outras Informações" />
                <asp:BoundField DataField="status_marcacao" HeaderText="Status da Marcação" />
                <asp:BoundField DataField="dt_contato" HeaderText="Data do Contato" />
                <asp:BoundField DataField="hr_contato" HeaderText="Hora do Contato" />
                <asp:BoundField DataField="resultado" HeaderText="Resultado" />
                <asp:BoundField DataField="sub_motivo" HeaderText="Sub-Motivo" />
                <asp:BoundField DataField="produto_solicitado" HeaderText="Produto Solicitado" />
                <asp:BoundField DataField="itens_vendidos" HeaderText="Qtd itens vendidos" />
                  <asp:BoundField DataField="mensalidade_produto" HeaderText="Mensalidade do Produto" />
                  <asp:BoundField DataField="dt_venda" HeaderText="data da Venda" />
                  <asp:BoundField DataField="cpf_venda" HeaderText="CPF da Venda" />
                <asp:BoundField DataField="os" HeaderText="OS" />
                <asp:BoundField DataField="dt_agendamento" HeaderText="Data do Agendamento" />
                <asp:BoundField DataField="MSISDN" HeaderText="MSISDN" />
                <asp:BoundField DataField="dt_instalacao" HeaderText="Data da instalação" />
                 <asp:BoundField DataField="dt_cancelamento" HeaderText="Data do cancelamento" />
                 <asp:BoundField DataField="motivo_cancelamento" HeaderText="Motivo do Cancelamento" />
                 <asp:BoundField DataField="observacao" HeaderText="Observação" />
                
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
    </div>
    </form>
</body>

</html>