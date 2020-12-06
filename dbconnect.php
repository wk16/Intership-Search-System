<?php

$host = 'localhost';
$db   = 'u534895628_main';
$user = 'u534895628_user';
$pass = 'Intern-port1';
$charset = 'utf8mb4';

global $conn;
$dsn = "mysql:host=$host;dbname=$db;charset=$charset";
$options = [
	PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
	PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
	PDO::ATTR_EMULATE_PREPARES   => false,
];
try {
	 $conn = new PDO($dsn, $user, $pass, $options);
} catch (\PDOException $e) {
	// TODO-- change this
	 throw new \PDOException($e->getMessage(), (int)$e->getCode());
}

?>