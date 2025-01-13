<?php
session_start();
include "../koneksi.php";

        $username = $_POST['username'];
        $password = $_POST['password'];
        $qry = mysqli_query($koneksi,"SELECT * FROM user WHERE username = '$username' AND password = '$password'");
        $cek = mysqli_num_rows($qry);
        if ($cek==1){
            $_SESSION['userweb']=$username;
            header ("location:../webadmin/index.html");
            exit;
        }
        else{
            echo "Maaf username dan password anda salah";
        }
    
    ?>

