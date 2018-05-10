<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Buffet.aspx.cs" Inherits="WebApplication2.Buffet" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="CssTelaCliente.css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="CaixaPagina">
            <h2>Cadastro de Clientes</h2><br />
            <br />
            &nbsp;<asp:Button ID="btnAdicionar" runat="server" OnClick="btnAdicionar_Click" Text="ADICIONAR" Width="100px" />
            &nbsp;<asp:Button ID="btnDeletar" runat="server" OnClick="btnDeletar_Click" Text="DELETAR" Width="100px" />
            &nbsp;<asp:Button ID="btnCarregar" runat="server" OnClick="btnCarregar_Click" Text="CARREGAR" Width="100px" />
            &nbsp;<asp:Button ID="btnEditar" runat="server" OnClick="btnEditar_Click" Text="EDITAR" Width="100px" />
            <br />
            <br />
        </div>
        <asp:Label ID="LblCPF" runat="server" Text="CPF:" Width="85px" CssClass="CaixaTexto"></asp:Label>
        <asp:TextBox ID="TxtIdCliente" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="LblCPF0" runat="server" Text="Nome:" Width="85px" CssClass="CaixaTexto"></asp:Label>
        <asp:TextBox ID="TxtNome" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="LblCPF1" runat="server" Text="Endereço:" Width="85px" CssClass="CaixaTexto"></asp:Label>
        <asp:TextBox ID="TxtEndereco" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="LblCPF2" runat="server" Text="Numero:" Width="85px" CssClass="CaixaTexto"></asp:Label>
        <asp:TextBox ID="TxtNumeroEnd" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="LblCPF3" runat="server" Text="Telefone:" Width="85px" CssClass="CaixaTexto"></asp:Label>
        <asp:TextBox ID="TxtTelefone" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="LblCPF4" runat="server" Text="Email:" Width="85px" CssClass="CaixaTexto"></asp:Label>
        <asp:TextBox ID="TxtEmail" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" Width="372px" AllowCustomPaging="True" AllowPaging="True" CellPadding="0" >
            <AlternatingRowStyle Wrap="False" />
            <EditRowStyle Wrap="False" />
            <EmptyDataRowStyle Wrap="False" />
            <FooterStyle Wrap="False" />
            <HeaderStyle Wrap="False" />
            <PagerStyle Wrap="False" />
            <RowStyle HorizontalAlign="Left" Width="120px" Wrap="False" />
            <SelectedRowStyle Wrap="False" />
            <SortedAscendingCellStyle Wrap="False" />
            <SortedAscendingHeaderStyle Wrap="False" />
            <SortedDescendingCellStyle Wrap="False" />
            <SortedDescendingHeaderStyle Wrap="False" />
        </asp:GridView>
        <br />              
        <asp:ListBox ID="ListBox1" runat="server" DataSourceID="ObjectDataSource1"></asp:ListBox>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="retFromCliente" TypeName="WebApplication2.BLLCliente"></asp:ObjectDataSource>
    </form>
</body>
</html>
