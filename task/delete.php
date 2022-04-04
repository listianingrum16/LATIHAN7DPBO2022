<?php

    include("conf.php");
    include("DB.php");
    include("Task.php");
   
    $otask = new Task($db_host, $db_user, $db_password, $db_name);
    $otask->open();

    if( isset($_GET['id_hapus']) ){

        // ambil id dari query string
        $id = $_GET['id_hapus'];

        // buat query hapus
        $query = "DELETE FROM tb_to_do WHERE id = $id";
        $otask->execute($query);
    
        // apakah query hapus berhasil?
        if( $query ){
            header('Location: index.php');
        } else {
            die("Gagal menghapus...");
        }
    }else {
        die("Akses dilarang...");
    }

?>