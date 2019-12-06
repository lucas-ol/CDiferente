<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sobre.aspx.cs" Inherits="CDiferente.sobre" %>

<!DOCTYPE html>

<html lang="pt-br">
<head runat="server">
    <meta charset='UTF-8'>
    <title>C DIFERENTE - SOBRE</title>
    <link rel='stylesheet' href='css/reset.css'>
    <link rel='stylesheet' href='css/estilos.css'>

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
        <div class="container">
            Escolha o Usuario para visualizar as Informações   
            <asp:DropDownList runat="server" ID="ddlUsuarios" OnSelectedIndexChanged="ddlUsuarios_SelectedIndexChanged" AutoPostBack="true">
            </asp:DropDownList>

        </div>
        <!-- CONTAINER -->
        <div class='containerGeral' runat="server" id="tempDiv">
            <div class='containerSobre'>
                <img class='ftSobre' src='img/FotoSobre.png' alt='Foto Cleberson'>
                <p class='txtSobre'>
                    Olá, Bem-Vindo!
					<br>
                    <br>
                    Meu nome é Cleberson dos Santos Soares, tenho 31 anos e sou idealizador do site C Diferente.
					<br>
                    <br>
                    A ideia surgiu da necessidade de criar um portfólio para expor meus trabalhos acadêmicos e divulgar os serviços de Web design e Desenvolvimento Web.
					<br>
                    <br>
                    Cursei Design de Mídia Digital durante 2 anos na Faculdade Impacta Tecnológica e hoje sou formado em Gestão da Tecnologia da Informação na FATEC - Itaquaquecetuba.
                </p>

            </div>
        </div>

        <div class='containerGeral' runat="server" id="divUser" visible="false">
            <div class='containerSobre'>
                <asp:Image ImageUrl="imageurl" CssClass="ftSobre" runat="server" ID="imgUser" />
                <p class='txtSobre'  id="txtConteudo" runat="server" >
                  
                </p>
            </div>
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
    </form>
</body>
</html>
