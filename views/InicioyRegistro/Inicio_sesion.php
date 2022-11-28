<?php
session_start();
include('conexion.php');


if (isset($_POST['user_name']) && isset($_POST['Clave'])) {

    function validate($data)
    {
        $data = trim($data);
        $data = stripslashes($data);
        $data = htmlspecialchars($data);
        return $data;
    }
    $user_name = validate($_POST['user_name']);
    $Clave = validate($_POST['Clave']);

    if (empty($user_name)) {
        header("Location: Index.php?error=El user_name Es Requerido");
        exit();
    } elseif (empty($Clave)) {
        header("Location: Index.php?error=La clave Es Requerida");
        exit();
    } else {


        $Sql = "SELECT * FROM usuarios WHERE user_name = '$user_name' AND password='$Clave'";
        $result = mysqli_query($conexion, $Sql);

        if (mysqli_num_rows($result) === 1) {
            $row = mysqli_fetch_assoc($result);
            if ($row['user_name'] === $user_name && $row['password'] === $Clave) {
                $_SESSION['id'] = $row['id'];
                $_SESSION['user_name'] = $row['user_name'];
                $_SESSION['nombre'] = $row['nombre'];
                $_SESSION['password'] = $row['password'];
                $_SESSION['seguidores'] = $row['seguidores'];
                $_SESSION['seguidos'] = $row['seguidos'];
                $_SESSION['descripcion'] = $row['descripcion'];
                header("Location: ../Home/Home.php");
                exit();
            } else {
                header("Location: Index.php?error=El usuario o la clave son incorrectas");
                exit();
            }

        } else {
            header("Location: Index.php?error=El usuario o la clave son incorrectas");
            exit();
        }

    }



}
?>