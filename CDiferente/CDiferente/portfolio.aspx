<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="portfolio.aspx.cs" Inherits="CDiferente.portfolio" %>

<!DOCTYPE html>

<html lang="pt-br">
<head runat="server">
    <meta charset='UTF-8'>
    <title>C DIFERENTE - PORTFÓLIO</title>
    <link rel='stylesheet' href='css/reset.css'>
    <link rel='stylesheet' href='css/estilos.css'>

    <!-- FONTES WEBFONTS GOOGLE -->
    <link href="https://fonts.googleapis.com/css?family=Indie+Flower|Tomorrow&display=swap" rel="stylesheet">
    <meta name="viewport" content="width=device-width">
</head>
<body onload="comeco();regular()">
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
        <div class="container">
            Escolha o Usuario para visualizar o portifolio  
            <asp:DropDownList runat="server" ID="ddlUsuarios" OnSelectedIndexChanged="ddlUsuarios_SelectedIndexChanged" AutoPostBack="true">
            </asp:DropDownList>
            <asp:HiddenField runat="server" ID="hdnPortifolio" ClientIDMode="Static" />
        </div>
        <div class='containerPort'>
            <div class='setas'>
                <a id="prev" href="javascript:menos()"><</a>
                <a id="next" href="javascript:mais()">></a>
            </div>
            <a id="aId">
                <img id="imgId"></a>
            <br />
            <br />
            <br />

            <%-- <form name="form">--%>
            <input id="inputPort" type="text" name="texto">
            <%--</form>--%>
        </div>

        <!-- RODAPÉ -->
        <footer>
            <div class='rodape'>
                <p>&copy; Copyright C Diferente</p>
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
