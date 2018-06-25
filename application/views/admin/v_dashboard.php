        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Dashboard</h1>
                    </div>
                    <!-- /.col-lg-12 -->
                    <div class="col-sm-12">
                        <div class="alert alert-info" role="alert">
                            SELAMAT DATANG DI HALAMAN ADMINISTRATOR
                        </div>
                        <?php echo $this->session->flashdata('pesan') ?>

                        

                        <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
                            <span class="count_top"><i class="glyphicon glyphicon-education"></i> Guru</span>
                            <div class="count green"><?php echo $jumlahguru; ?></div>
                            <span class="count_bottom"> aktif mengajar</span>
                        </div>

                <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
                    <span class="count_top"><i class="fa fa-star"></i> Guru</span>
                   <!--  <div class="count green"><?php echo $jumlahGuru; ?></div> -->
                    <span class="count_bottom"><i class="green"></i>aktif mengajar</span>
                </div>
                <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
                    <span class="count_top"><i class="fa fa-child"></i> Siswa</span>
                    <!-- <div class="count green"><?php echo $jumlahSiswa[0]['jumlah']; ?></div> -->
                    <span class="count_bottom"><i class="red"></i> sudah terdaftar</span>
                </div>
                <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
                    <span class="count_top"><i class="fa fa-male"></i> Siswa KMS</span>
                    <!-- <div class="count green"><?php echo $jumlahKMS[0]['jumlah']; ?></div> -->
                    <span class="count_bottom"><i class="red"></i> yang terdaftar</span>
                </div>
                <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
                    <span class="count_top"><i class="fa fa-user"></i> Pegawai </span>
                   <!--  <div class="count green"><?php echo $jumlahTenagaPen; ?></div> -->
                    <span class="count_bottom"><i class="green"></i> dari seluruh sekolah</span>
                </div>
                <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
                    <span class="count_top"><i class="fa fa-trophy"></i> Prestasi</span>
                   <!--  <div class="count green"><?php echo $jumlahPrestasi; ?></div> -->
                    <span class="count_bottom"><i class="red"></i> yang sudah diraih</span>
                </div>
                
                    </div>
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </div>

         <!-- MetisMenu CSS -->
                        <link href="<?php echo base_url().'' ?>assets/css/main.css" rel="stylesheet">