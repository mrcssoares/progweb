<?php  
 $nome = $_POST["user"];
 $senha = $_POST["senha"];
 $validar = $_POST["validar"];

 try{
      #Conexão com MySQL via PDO_MYSQL
      $DBH = new PDO("mysql:host=localhost;dbname=gomoku", "root", "");
 }catch (PDOException $e) {
   	   echo $e->getMessage();
 }

 if(isset($validar)){
 	$verify = $DBH->query("SELECT * FROM Usuario WHERE nome = '$nome' and senha = '".md5($senha)."'");
 	$count = $verify->rowCount();
 	if ($count > 0){
 		//header("Location:form.html");
 	//if($nome == 'demo' && md5($senha) == md5('demo')){
 	//	echo md5("demo");
 		header("Location:form.html");
 	}else{
 		echo"<script language='javascript' type='text/javascript'>alert('Login e/ou senha incorretos');window.location.href='login.html';</script>";
        die();
 	}
 } 




?>