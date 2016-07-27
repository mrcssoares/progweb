<?php
	$nome = $_GET["nome"];
	$sexo = $_GET["sexo"];
	$mensagem = $_GET["mensagem"];

	echo "$nome, do sexo $sexo, comentou ''".$mensagem."''";
?>