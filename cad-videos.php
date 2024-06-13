<h2> Cadastro de Vídeos </h2>

<div>
    <form action="index.php?menu=inserir-videos" method="post">
        <div>
            <label for="tituloVideo">Título</label>
            <input type="text" name="tituloVideo" id="tituloVideo" />
        </div>
</div>
<div>
    <div>
        <label for="duracaoVideo">Duração</label>
        <input type="text" name="DuracaoVideo" id="duracaoVideo" />
    </div>
</div>
<div>
    <div>
        <label for="valorLocacaoVideo">Valor da Locação</label>
        <input type="text" name="valorLocacaoVideo" id="valorLocacaoVideo" />
    </div>
</div>
<div>
    <label for="idCategoria">Categoria</label>
    <select name="idcategoria" id="idCategoria">
        <option value="">Selecione uma Categoria</option>

        <?php
        $sqlC = "select * from tbcategorias order by nomeCategoria asc";
        $rs = mysqli_query($conexao, $sqlC);
        while ($dadosC = mysqli_fetch_assoc($rs)) {
            ?>

            <option value="<?= $dadosC["idCategoria"] ?>"><?= $dadosC["nomeCategoria"] ?></option>

            <?php
        }
        ?>
    </select>
</div>
<div>
    <button type="submit">Cadastar</button>
</div>
</form>