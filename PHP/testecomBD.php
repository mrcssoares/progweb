<?php 
	$nome = $_POST["nome"];
	$sexo = $_POST["sexo"];
	$mensagem = $_POST["mensagem"];

	try{
      #Conexão com MySQL via PDO_MYSQL
      $DBH = new PDO("mysql:host=localhost;dbname=gomoku", "root", "");
  	}catch (PDOException $e) {
   	   echo $e->getMessage();
  	}
  	$comentario = "";
  	$comentario = $DBH->prepare("INSERT INTO COMENTARIO (id, nome, sexo, comentarios) VALUES (NULL, '$nome', '$sexo', '$mensagem')");
    $comentario->execute();

    $comentario = $DBH->query("SELECT * FROM COMENTARIO");
    $objcomentario = $comentario->fetch(PDO::FETCH_OBJ);

   while($objcomentario = $comentario->fetch(PDO::FETCH_OBJ)){
   	echo "<br>Id: ".$objcomentario->id."<br>";
   	echo "Nome: ".$objcomentario->nome."<br>";
   	echo "Sexo: ".$objcomentario->sexo."<br>";
   	echo "Comentario: ".$objcomentario->comentarios."<br>";
   }






?>