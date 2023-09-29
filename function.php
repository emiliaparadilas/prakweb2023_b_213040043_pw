<?php  

// Koneksi ke database
function koneksi() 
{
    $conn = mysqli_connect('localhost', 'root', '', 'prakweb2023b_213040043') or die('Koneksi Gagal!');

    return $conn;
}

// Membuat fungsi query
function query($sql) 
{
    $conn = koneksi();
    $result = mysqli_query($conn, $sql) or die(mysqli_error($conn));
    
    $rows = [];
    while($row = mysqli_fetch_assoc($result)) 
    {
        $rows[] = $row;
    }

    return $rows;
}