        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header">Dashboard / Data Kelas</h3>
                    </div>
                    <!-- /.col-lg-12 -->
                    <div class="col-sm-12">
                        <div class="panel panel-default">
                            <div class="panel-heading" align="center">
                                Data Kelas
                            </div>

        
                            <!-- /.panel-heading -->
                            <div class="panel-body">
                                <div class="dataTable_wrapper">
                                    <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                        <thead>
                                        <tr>
                                            <th width="7%" align="center">No.</th>
                                            <th width="10%%" align="center">ID Kelas</th>
                                            <th width="13%">Tahun Ajaran</th>
                                            <th width="12%" align="center">Nama Kelas</th>
                                            <th width="30%">Qty Siswa</th>
                                            <th>Wali Kelas</th>
                                        </tr>
                                    </thead>
                                    <tbody>


                                    <?php 
                                    $no = 1;
                                    foreach($record->result() as $row){
                                    // $row = $this->lib_new->row_count('profil', array('kab'=>$id_kabu,'jenjang'=>'SD'));
                                     ?>
                                        <tr class="gradeU">
                                            <td align="center"><?php echo $no++ ?></td>
                                            <td align="center"><?php echo $row->id_kelas ?></td>
                                            <td align="center"><?php echo $row->tahun_ajar ?></td>
                                            <td align="center"><?php echo $row->nama_kelas ?></td>
                                            <td></td>
                                           <!--  <td <?=$qtysiswa;?>></td> -->
                                            <td><?php echo $row->id_guru ?></td>
                                        </tr>
                                    <?php } ?>
                                    </tbody>
                                    </table>
                                </div>

                                 <!-- <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
                            <span class="count_top"><i class="glyphicon glyphicon-education"></i> Guru</span>
                            <div class="count green"><?php echo $jumlahguru; ?></div>
                            </div> -->
                            <spa


                                <div class="form-group">


                        <!-- <form action=""<?php echo base_url().'dashboard/siswa_filter_kelas' ?>"> -->        
                                <h4>Cetak Laporan</h4>
                                <a style="margin-bottom: 15px;" class="btn btn-success" href="<?php echo base_url().'dashboard/cetak_laporan_kelas' ?>">Cetak Laporan</a>
                    </div>
                                
                    </div>
                            </div>
                            <!-- /.panel-body -->
                        </div>
                    </div>
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </div>