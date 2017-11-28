<?php 
	try {
		global $pdo;
		$pdo = new PDO("mysql:dbname=projeto_mmn;host=localhost", "root", "");
	} catch(PDOException $e) {
		echo "Erro: ".$e->getMessage();
		exit;
	}

	$limite = 4;

	$patentes = array();

 ?>