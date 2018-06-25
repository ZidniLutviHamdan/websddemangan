        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header">Dashboard / Data Siswa</h3>
                    </div>
                    <!-- /.col-lg-12 -->
                    <div class="col-sm-12">
                        <a style="margin-bottom: 15px;" class="btn btn-default" href="<?php echo base_url().'dashboard/siswa_add' ?>">Tambah Data</a>
                    </div>
                    <div class="col-sm-12">
                        <div class="panel panel-default">
                            <div class="panel-heading" align="center">
                                Data Siswa
                            </div>

        
                            <!-- /.panel-heading -->
                            <div class="panel-body">
                                <div class="dataTable_wrapper">
                                    <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                        <thead>
                                        <tr>
                                            <th width="7%" align="center">No.</th>
                                            <th width="8%" align="center">NIS</th>
                                            <th width="20%">Nama Siswa</th>
                                            <th width="10%" align="center">Kelamin</th>
                                            <th width="30%">Alamat</th>
                                            <th>No. Telepon</th>
                                            <th width="10%" align="conter">Pilihan</th>
                                        </tr>
                                    </thead>
                                    <tbody>


                                    <?php 
                                    $no = 1;
                                    foreach($record->result() as $row){ ?>
                                        <tr class="gradeU">
                                            <td align="center"><?php echo $no++ ?></td>
                                            <td><?php echo $row->nis ?></td>
                                            <td><?php echo $row->nama_siswa ?></td>
                                            <td align="center"><?php echo $row->jk ?></td>
                                            <td><?php echo $row->alamat ?></td>
                                            <td><?php echo $row->no_telepon ?></td>
                                            <td align="center"><a href="<?php echo base_url().'dashboard/siswa_edit/'.$row->nis ?>"> <i class="glyphicon glyphicon-ok"></i></a> | 
                                            <a href="<?php echo base_url().'dashboard/siswa_hapus/'.$row->nis ?>"><i class="glyphicon glyphicon-remove"></i></a></td>
                                        </tr>
                                    <?php } ?>
                                    </tbody>
                                    </table>
                                </div>


                                <div class="form-group">


                        <!-- <form action=""<?php echo base_url().'dashboard/siswa_filter_kelas' ?>"> -->        
                                <h4>Cetak Laporan</h4>
                                <a style="margin-bottom: 15px;" class="btn btn-success" href="<?php echo base_url().'dashboard/cetak_laporan_siswa' ?>">Cetak Laporan</a>
                    </div>
                                    <!-- <button name="pilih" type="submit" class="btn btn-success"><a href="<php <?php echo base_url().'dashboard/cetak_laporan_siswa' ?>"></a>Cetak Laporan</button> -->
                    </div>
                                <!-- /.table-responsive -->
                                <!-- <div class="well">
                                    <h4>DataTables Usage Information</h4>
                                    <p>DataTables is a very flexible, advanced tables plugin for jQuery. In SB Admin, we are using a specialized version of DataTables built for Bootstrap 3. We have also customized the table headings to use Font Awesome icons in place of images. For complete documentation on DataTables, visit their website at <a target="_blank" href="https://datatables.net/">https://datatables.net/</a>.</p>
                                    <a class="btn btn-default btn-lg btn-block" target="_blank" href="https://datatables.net/">View DataTables Documentation</a>
                                </div> -->
                            </div>
                            <!-- /.panel-body -->
                        </div>
                    </div>
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </div>