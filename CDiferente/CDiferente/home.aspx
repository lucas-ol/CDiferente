<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="CDiferente.home" %>

<!DOCTYPE html>

<html lang="pt-br">
<head runat="server">   
    <meta charset="UTF-8">
    <title>C DIFERENTE - HOME</title>
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/estilos.css">

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
        <div class="containerHome">
            <h1 id="headline">Bem Vindo !</h1>
            <p id="text">C Diferente Design Digital</p>
        </div>
        <!-- RODAPÉ -->
        <footer>
            <div class="rodape">
                <p>&copy; Copyright C Diferente</p>
                <ul class="redeSoc">
                    <li><a href="http://facebook.com/cdiferente">Facebook</a></li>
                    <li><a href="http://instagram.com/cdiferente">Instagram</a></li>
                </ul>
            </div>
        </footer>
    </form>
</body>
</html>
