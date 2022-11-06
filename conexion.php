<?php

$link = "mysql:host=localhost;dbname=usm";
$usuario = "root";
$pass = "pass";

try {
    $pdo = new PDO($link, $usuario, $pass);
    echo "Conectado";
} catch (PDOException $e) {
    die();
}