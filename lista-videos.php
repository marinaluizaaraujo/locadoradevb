<?php 

$sql = "select 
idVideo,
tituloVideo,
duracaoVideo,
valorLocacaoVideo,
nomeCategoria,
statusVideo 
from 
tbvideos as v inner join tbcategorias as c on v.idCategoria = c.idCategoria";
$rs = mysqli_query($conexao, $sql);

?>

<h2> Lista de Vídeos </h2>
<div>
    <a href="index.php?menu=cad-videos">
        Novo Vídeo 
    </a>
</div>
<table border="1">
    <thead>
    <tr>
        <th> ID </th>
        <th> Titulo do Filme </th>
        <th> Duração do Filme </th>
        <th> Valor da Locação </th>
        <th> Categoria </th>
        <th> Status </th>
    </tr>
    </thead>
    <tbody>

    <?php 
    while($dados = mysqli_fetch_assoc($rs)){
    ?>
        <tr>
            <td> <?=$dados["idVideo"] ?> </td>
            <td><?=$dados["tituloVideo"] ?> </t>
            <td> <?=$dados["duracaoVideo"] ?> </td>
            <td> <?=$dados["valorLocacaoVideo"] ?> </td>
            <td> <?=$dados["nomeCategoria"] ?> </td>
            <td> <?=$dados["statusVideo"] ?> </td>
        </tr>
    <?php 
    }
    ?>
    </tbody>
</table>
