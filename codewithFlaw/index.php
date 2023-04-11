<?php

try{
    $db = new PDO('mysql:host=localhost;dbname=demo_injection', 'root','');
    $db->exec('SET NAMES "UTF8"');
}catch(PDOException $e){
    echo $e->getMessage();
}

if(!empty($_GET)){
    // Il faudra bien sûr ajouter la protection contre les failles XSS
    $id = $_GET['id'];

    $sql = "SELECT * FROM `users` WHERE `id` = $id;";

    $query = $db->query($sql);

    $users = $query->fetchAll(PDO::FETCH_ASSOC);
}


foreach($users as $user){
    echo '<p>'. $user['email'].'</p>';
}
