<?php

    include("conf.php");
    include("DB.php");
    include("Task.php");
   
    $otask = new Task($db_host, $db_user, $db_password, $db_name);
    $otask->open();

    // cek apakah tombol daftar sudah diklik atau blum?
    if(isset($_POST['add'])){
        
        // ambil data dari form skin.html
        $tname = $_POST['tname'];
        $tdeadline = $_POST['tdeadline'];
        $tdetails = $_POST['tdetails'];
        $tsubject = $_POST['tsubject'];
        $tpriority = $_POST['tpriority'];
        
        // buat query
        $query = "INSERT INTO tb_to_do (name_td, deadline_td, details_td, subject_td, 
                priority_td, status_td) VALUES ('$tname', '$tdeadline', '$tdetails', '$tsubject',
                '$tpriority', 'Belum')";
        $otask->execute($query);
       
        // apakah query simpan berhasil?
        if( $query ) {
            // kalau berhasil alihkan ke halaman listProvinsi.php dengan status=sukses
            header('Location: index.php?status=sukses');
        } else {
            // kalau gagal alihkan ke halaman index.php dengan status=gagal
            header('Location: index.php?status=gagal');
        }      
    } else {
        die("Akses dilarang...");
    }
?>