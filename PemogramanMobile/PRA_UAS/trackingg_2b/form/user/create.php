<?php

/*$result = array ();
$result['succes'] = 1;
$result['message'] = "Halaman Create";
echo json_encode($result);*/

if(isset($username) or isset($pass)){
    $result = array();
    $table = "tb_user";

    $sqlcek="select * from $table where username='$username'";
    $cek = mysqli_query($db, $sqlcek);

    //--Verifikasi apakah username sudah terdaftar--//
    if($cek->num_rows>=1){

        $result['success'] = 0;
        $result['message'] = "Username $username sudah ada!";
        echo json_encode($result);
    }else{
        $rand = rand(10, 50);
        $api_key = md5(date('Y-m-d H:i:s').$username.$nama.$rand);

        $sqlInsert="INSERT INTO $table
                    VALUES (NULL, '$username','$email','$nama','$jenis_kelamin',
                    '$no_tlpn','$pass','$api_key','')";
        $insert= mysqli_query($db, $sqlInsert);
        // Proses insert Berhasil
        if($insert){

            $sqlcek2="select * from $table where username='$username'";
            $cek2= mysqli_query($db, $sqlcek2);

            $data=mysqli_fetch_array($cek2);
            $result['insert'] = array();

            $result['success'] = 1;
            $result['message'] = "Data berhasil ditambahkan";
            //print_r($data);

            $index['id_user']=$data['id_user'];
            $index['nama']=$data['nama'];
            $index['img']=$data['img'];
            $index['api_key']=$data['api_key'];

            array_push($result['insert'], $index);
            echo json_encode($result);
            mysqli_close($db);
        }else{
            $result['success'] = 0;
            $result['message'] = "Gagal ditambahkan..";
            echo json_encode($result);
        }
    }

}else{
    $result['success'] = 0;
    $result['message'] = "Halaman tidak bisa di akses";
    echo json_encode($result);
}

?>
?>