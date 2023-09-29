<?php
require 'function.php';

$buku = query("SELECT * FROM buku");

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width" , initial-scale=1.0>
    <title>EmilBooks - Daftar Buku</title>
    <!-- Link Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>

<body>

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg bg-body-tertiary">
        <div class="container-fluid">
            <a class="fw-bold align-middle navbar-brand" href="index.php">EmilBooks</a>
        </div>
    </nav>

    <!-- Awal Section -->
    <section class="main">
        <div class="container my-3">
            <h1 class="mb-4">List Buku</h1>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Gambar</th>
                        <th scope="col">Judul</th>
                        <th scope="col">Pengarang</th>
                        <th scope="col">Penerbit</th>
                        <th scope="col">Tahun</th>
                        <th scope="col">Kategori</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Isi List Buku -->
                    <?php $no = 1;
                    foreach ($buku as $bk) { ?>
                        <ul>
                            <tr class="align-middle">
                                <th scope="row"><?= $no++; ?></th>
                                <td>
                                    <img src="img/<?= $bk["gambar"]; ?>" width="125px">
                                </td>
                                <td><?= $bk["judul"]; ?></td>
                                <td><?= $bk["pengarang"]; ?></td>
                                <td><?= $bk["penerbit"]; ?></td>
                                <td><?= $bk["tahun"]; ?></td>
                                <td><?= $bk["kategori"]; ?></td>
                            </tr>
                        </ul>
                    <?php } ?>
                </tbody>
            </table>
        </div>
    </section>
    <!-- Akhir Section -->

    <!-- Awal Footer -->
    <footer class="bg-light py-4">
        <div class="container">
            <div class="row mt-3">
                <div class="col-md-12 text-center">
                    &copy; 2023 EmilBooks. All Rights Reserved.
                </div>
            </div>
        </div>
    </footer>

    <!-- Script Bootstrap -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>

</html>