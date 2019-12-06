<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="CDiferente.admin.login" %>

<!DOCTYPE html>

<html>
<head runat="server">

    <meta charset='UTF-8'>
    <title>ADMIN- Login</title>
    <link rel='stylesheet' href='/css/reset.css'>
    <link rel='stylesheet' href='/css/estilos.css'>

    <!-- FONTES WEBFONTS GOOGLE -->
    <link href="https://fonts.googleapis.com/css?family=Indie+Flower|Tomorrow&display=swap" rel="stylesheet">
    <meta name="viewport" content="width=device-width">
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <h1><a href="/home.aspx">
                <img class="logo" src="/img/logoCDif1.png" alt="Logotipo C DIFERENTE"></a></h1>
            <nav>
                <ul class="menu">
                    <li><a href="/admin/navegacao.aspx">Navegação</a></li>
                    <li><a href="/admin/portifolio-listagem.aspx">Portifolios</a></li>
                    <li><a href="/admin/portifolio-listagem.aspx">contatos.aspx</a></li>
                    <li><a href="/admin/logout.aspx">Sair</a></li>
                </ul>
            </nav>
        </header>
        <div class="container">
            <div style="width: 25%; margin: auto;">
                <table>
                    <tr>
                        <td>Login:</td>
                        <td>
                            <asp:TextBox runat="server" ID="txtLogin" CssClass="input" /></td>
                    </tr>
                    <tr>
                        <td>Senha: </td>
                        <td>
                            <asp:TextBox runat="server" ID="txtSenha" TextMode="Password" CssClass="input" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Button Text="Logar" runat="server" ID="btnLogar" OnClick="btnLogar_Click" CssClass="btEnviar" />
                        </td>
                    </tr>
                </table>
                <asp:Literal ID="txtMsg" runat="server" />
                <a href="/home.aspx">Voltar</a>
                <a href="/admin/cadastro.aspx">Cadastrar-se</a>
            </div>

        </div>
        <script src='/js/jquery.min.js'></script>
        <script src='/js/cdiferente.js'></script>
    </form>
</body>
</html>
