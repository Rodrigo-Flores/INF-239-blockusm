<?php
  session_start();

  session_unset();

  session_destroy();

  header('Location: /INF-239-php/index.php'); // php-login
?>
