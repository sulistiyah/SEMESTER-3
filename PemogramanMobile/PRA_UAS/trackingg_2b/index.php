<?php
    // extract method post dan get
    extract($_GET);
    extract($_POST);
    
    // koneksi
    require_once('koneksi.php');

    switch($r) {
        // user
        case 'login':
        include "form/user/login.php";
        break;

        case 'createuser':
        include "form/user/create.php";
        break;

        case 'createanggota':
        include "form/anggota/create.php";
        break;

        // jika halaman tidak ditemukan
        default:
        include "form/page-404.php";
    }
?>