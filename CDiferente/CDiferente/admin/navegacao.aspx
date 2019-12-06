<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="navegacao.aspx.cs" Inherits="CDiferente.admin.navegacao" %>

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
            Portal do Administrador
        </div>
    </form>
</body>
</html>
