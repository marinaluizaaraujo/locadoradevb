<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- link do CSS -->
    <link rel="stylesheet" href="./css/estilo.css">
    <title>LOCADORA DEV</title>
</head>
<body>
    <header>
        <h1>
        Locadora Dev
        </h1>
        <ul>
            <li>
                <a href="index.php?menu=home"> Home </a>
            </li>
            <li>
                <a href="index.php?menu=lista-videos"> Vídeos </a>
            </li>
            <li>
                <a href="index.php?menu=lista-categorias"> Categorias </a>
            </li>
            <li>
                <a href="index.php?menu=lista-clientes"> Clientes </a>
            </li>
            <li>
                <a href="index.php?menu=locacoes"> Locações </a>
            </li>
        </ul>
    </header>
    <main>
        <?php

if (isset($_GET["menu"])) {
    $menu = $_GET["menu"];
} else {
    $menu = "";
}

switch ($menu) {
    case "home":
        include ("home.php");
        break;
    case "lista-videos":
        include ("lista-videos.php");
        break;
    case "lista-categorias":
        include ("lista-categorias.php");
        break;
    case "lista-clientes":
        include ("lista-clientes.php");
        break;
    case "locacoes":
        include ("locacoes.php");
        break;
    default:
    include("home.php");
}

?>
    </main>
</body>
</html>
