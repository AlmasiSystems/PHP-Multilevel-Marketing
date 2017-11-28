<?php 
	session_start();	
	require 'config.php';

	if(!empty($_POST['email'])) {
		$email = addslashes($_POST['email']);
		$senha = md5(addslashes($_POST['senha']));

		$sql = $pdo->prepare("SELECT * FROM usuarios WHERE email = :email AND senha = :senha");
		$sql->bindValue(":email", $email);
		$sql->bindValue(":senha", $senha);
		$sql->execute();

		if($sql->rowCount() > 0) {
			$sql = $sql->fetch();
			$_SESSION['mmnlogin'] = $sql['id'];
			header("Location: index.php");
			exit;
		} else {
			echo "Usuário e/ou senha errados!";
		}
	}
 ?>

 <form method="POST">
 	<input type="email" name="email" placeholder="email"><br><br>
 	<input type="password" name="senha" placeholder="senha"><br><br>
 	<input type="submit" value="Entrar">
 </form>