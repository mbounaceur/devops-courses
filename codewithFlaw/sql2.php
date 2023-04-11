<?php
  $username = $_POST['username'];
  $password = $_POST['password'];

  $db = mysqli_connect('localhost', 'root', '', 'example_db');

  $query = "SELECT * FROM users WHERE username = '$username' AND password = '$password'";
  $result = mysqli_query($db, $query);

  if ($result && mysqli_num_rows($result) > 0) {
    // l'utilisateur est authentifié
    echo 'Welcome ' . $username;
  } else {
    // l'utilisateur n'est pas authentifié
    echo 'Invalid username or password';
  }
?>
