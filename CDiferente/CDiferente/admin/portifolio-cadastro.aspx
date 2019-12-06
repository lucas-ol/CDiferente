<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="portifolio-cadastro.aspx.cs" Inherits="CDiferente.admin.portifolio_cadastro" %>

<!DOCTYPE html>

<html>
<head runat="server">

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
                <img class="logo" src="/img/logoCDif1.png" alt="Logotipo C DIFERENTE"></a></h1>
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
            <table>
                <tr>
                    <td>Nome Da Imagem</td>
                    <td>
                        <asp:TextBox runat="server" ID="txtImagem" CssClass="input" />
                        <asp:RequiredFieldValidator ErrorMessage="Digite o Nome da imagem" ControlToValidate="txtImagem" runat="server" ValidationGroup="group" /></td>
                </tr>
                <tr>
                    <td>
                        <label id="lbAnexo" for="fluImagemPortifolio">Escolha a imagem</label></td>
                    <td>
                        <asp:FileUpload runat="server" ID="fluImagemPortifolio" AllowMultiple="false" />
                        <asp:RequiredFieldValidator ErrorMessage="Escolha a imagem" ControlToValidate="txtImagem" runat="server" ValidationGroup="group" /></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button Text="Salvar" runat="server" ID="btnEnviar" OnClick="btnEnviar_Click" OnClientClick="return ValidateFileName();" ValidationGroup="group" CssClass="btEnviar" ValidateRequestMode="Enabled" />
                    </td>
                </tr>
            </table>

        </div>
        <script>
            function ValidateFileName() {
                var fu = document.getElementById("<%= fluImagemPortifolio.ClientID %>");
                var f = fu.value + "";
                if (!fu.value || (f.indexOf("#", 0) >= 0) || (f.indexOf("$", 0) >= 0) ||
                    (f.indexOf("%", 0) >= 0) || (f.indexOf("^", 0) >= 0)) {
                    alert("Faça upload de uma imagem");
                    return false;//will stop button click event here
                }

                return true;
            }
        </script>
    </form>
    <script src="/js/cdiferente.js"></script>
    <script src="/js/jquery.min.js"></script>
</body>
</html>
