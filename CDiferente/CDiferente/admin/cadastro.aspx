<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cadastro.aspx.cs" Inherits="CDiferente.admin.cadastro" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta charset='UTF-8'>
    <title>C DIFERENTE - CONTATO</title>
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
                    <li><a href="/admin/logout.aspx">Sair</a></li>
                </ul>
            </nav>
        </header>
        <div class="container">

            <table>
                <tr>
                    <td>name</td>
                    <td>
                        <asp:TextBox runat="server" ID="txtNome" CssClass="input" />
                        <asp:RequiredFieldValidator ErrorMessage="Insira o Nome" ControlToValidate="txtNome" runat="server" ValidationGroup="grop" />
                    </td>
                </tr>
                <tr>
                    <td>description</td>
                    <td>
                        <asp:TextBox runat="server" CssClass="input" ID="txtDescription" Columns="20" Rows="30" Height="150"  TextMode="MultiLine" />
                        <asp:RequiredFieldValidator ErrorMessage="Insira o Description" ControlToValidate="txtDescription" runat="server" ValidationGroup="grop" />
                    </td>
                </tr>
                <tr>
                    <td>login  
                    </td>
                    <td>
                        <asp:TextBox runat="server" CssClass="input" ID="txtLogin" />
                        <asp:RequiredFieldValidator ErrorMessage="Insira o Login" ControlToValidate="txtLogin" runat="server" ValidationGroup="grop" />
                    </td>
                </tr>
                <tr>
                    <td>senha</td>
                    <td>
                        <asp:TextBox runat="server" TextMode="Password" CssClass="input" ID="txtSenha" />
                        <asp:RequiredFieldValidator ErrorMessage="Insira a Senha" ControlToValidate="txtSenha" runat="server"  ValidationGroup="grop" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <label id="lbAnexo" for="fluImagemPortifolio">Escolher imagem</label> <asp:FileUpload runat="server" ID="fluImagemPortifolio" AllowMultiple="false" /></td>
                  
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button Text="Enviar" CssClass="btEnviar" ID="bntEnviar" runat="server" OnClick="bntEnviar_Click" OnClientClick="return ValidateFileName();" ValidationGroup="grop" /></td>
                </tr>
            </table>
            <asp:Literal ID="txtMsg" runat="server" />
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
</body>
</html>
