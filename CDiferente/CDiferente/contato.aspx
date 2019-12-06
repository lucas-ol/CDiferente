<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contato.aspx.cs" Inherits="CDiferente.contato" %>

<!DOCTYPE html>

<html lang="pt-br">
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
                <img class="logo" src="img/logoCDif1.png" alt="Logotipo C DIFERENTE"></a></h1>
            <nav>
                <ul class="menu">
                    <li><a href="/home.aspx" id="pagAtual">Home</a></li>
                    <li><a href="/sobre.aspx">Sobre</a></li>
                    <li><a href="/portfolio.aspx">Portfólio</a></li>
                    <li><a href="/contato.aspx">Contato</a></li>
                    <li><a href="/admin/navegacao.aspx">admin</a></li>
                </ul>
            </nav>
        </header>

        <!-- CONTAINER -->

        <div class='container'>
            <div id='contatos'>
                <p id='txtContato'>Faça seu orçamento, tire duvidas, encaminhe criticas e sugestões através dos nossos contatos ou formulário abaixo.</p>
                <p id='fone'><a href="”tel:011988376060">(11) 9 8837-6060</a></p>
                <p id='email'><a href="mailto:cleberson@cdiferente.com.br?Subject=Mensagem%20do%20Site">cleberson@cdiferente.com.br</a></p>

            </div>
            <div class="formContato">
                <fieldset>
                    <legend>&#60; FORMULÁRIO &#62; </legend>
                    <!-- CONTAINER -->
                    <div class="container">
                        Escolha o Usuario 
                        <asp:DropDownList runat="server" ID="ddlUsuarios" AutoPostBack="true">
                        </asp:DropDownList>
                        <asp:HiddenField runat="server" ID="hdnPortifolio" ClientIDMode="Static" />
                    </div>
                    <asp:TextBox runat="server" CssClass="input" name="nome" placeholder="Nome" />
                    <asp:TextBox runat="server" TextMode="Email" placeholder="Email" />
                    <asp:TextBox runat="server" CssClass="input" name="tel" placeholder="Telefone" />
                    <asp:TextBox runat="server" CssClass="msg" TextMode="MultiLine" name="conteudo" placeholder="Deixe uma mensagem" />
                    <asp:Button Text="&#60; ENVIAR / &#62; " runat="server" CssClass="btEnviar" />
                </fieldset>
            </div>
        </div>


        <!-- RODAPÉ -->
        <footer>
            <div class='rodape'>
                <p>&copy; Direitos Reservados - <span>C</span><span> Diferente</span><span> &#60;</span><span> &ne;</span><span> &#62;</span></p>
                <ul class='redeSoc'>
                    <li><a href="http://facebook.com/cdiferente">Facebook</a></li>
                    <li><a href="http://instagram.com/cdiferente">Instagram</a></li>
                </ul>
            </div>
        </footer>
        <script src='js/cdiferente.js'></script>
        <script src='jquery.min.js'></script>
    </form>
</body>
</html>
