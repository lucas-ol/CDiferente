<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="portifolio-listagem.aspx.cs" Inherits="CDiferente.admin.portifolio_listagem" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <meta charset='UTF-8'>
    <title>ADMIN- PORTFÓLIO</title>
    <link rel='stylesheet' href='/css/reset.css'>
    <link rel='stylesheet' href='/css/estilos.css'>

    <!-- FONTES WEBFONTS GOOGLE -->
    <link href="https://fonts.googleapis.com/css?family=Indie+Flower|Tomorrow&display=swap" rel="stylesheet">
    <meta name="viewport" content="width=device-width">
</head>
<body>
    <form id="form1" runat="server">
        <!-- CABEÇALHO -->
        <header>
            <h1><a href="/home.aspx">
                <img class="logo" src="/img/logoCDif1.png" alt="Logotipo C DIFERENTE" /></a></h1>
            <nav>
                <ul class="menu">
                    <li><a href="/admin/navegacao.aspx">Navegação</a></li>
                    <li><a href="/admin/portifolio-listagem.aspx">Portifolios</a></li>
                    <li><a href="/admin/contatos.aspx">contatos</a></li>
                    <li><a href="/admin/cadastro.aspx?id=<%=IdUsuario %>">Editar Cadastro</a></li>
                    <li><a href="/admin/logout.aspx">Sair</a></li>
                </ul>
            </nav>
        </header>
        <div class="container">
            <div class="container"><a href="/admin/portifolio-cadastro.aspx" class="force-a">Cadastrar Portifolio</a></div>
            <table class="table">
                <tr>
                    <th>Id</th>
                    <th>Imagem</th>
                    <th>Usuario</th>
                    <th>#</th>
                </tr>
                <asp:ListView runat="server" ID="lvPortifolios" OnItemDataBound="lvPortifolios_ItemDataBound" OnItemCommand="lvPortifolios_ItemCommand">
                    <ItemTemplate>
                        <tr>
                            <td>
                                <asp:Literal runat="server" ID="ltlId"></asp:Literal>
                            </td>
                            <td>
                                <asp:Literal runat="server" ID="ltlImagem"></asp:Literal>
                            </td>
                            <td>
                                <asp:Literal runat="server" ID="ltlUsuario"></asp:Literal>
                            </td>
                            <td>
                                <asp:HyperLink NavigateUrl="#" runat="server" ID="linkEdit" Text="Editar" CssClass="inherit" />
                                <asp:LinkButton Text="Deletar" ID="btnDeletar" runat="server" CssClass="inherit" />
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:ListView>
            </table>
        </div>
    </form>
    <script src='/js/jquery.min.js'></script>
    <script src='/js/cdiferente.js'></script>

</body>
</html>
