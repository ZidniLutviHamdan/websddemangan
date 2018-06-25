                                <li>
        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header">Dashboard / Semua Content</h3>
                    </div>
                    <!-- /.col-lg-12 -->

                     <div class="col-sm-12">
                        <a style="margin-bottom: 15px;" class="btn btn-default" href="<?php echo base_url().'dashboard/contentpost' ?>"><i class="glyphicon glyphicon-plus-sign"></i> Tambah Data</a>
                    </div>

                    
                    <div class="col-sm-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Daftar Content
                            </div>
                            <!-- /.panel-heading -->
                            <div class="panel-body">

                                <div class="dataTable_wrapper">
                                    <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                        <thead>
                                            <tr>
                                                <th>Judul</th>
                                                <th>Kategori</th>
                                                <th>Isi content</th>
                                                <th width="10%">Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <?php foreach($record->result() as $row){ ?>
                                            <tr class="odd gradeX">
                                                 <td><?php $char = $row->judul_content; echo strip_tags(substr($char,0,40)) ?></td>
                                                <!-- <td><?php echo $row->judul_content ?></td> -->
                                                <td><?php echo $row->kategori ?></td>
                                                <td><?php $text = $row->isi_content; echo strip_tags(substr($text,0,70)) ?></td>
                                                <td align="center"><a href="<?php echo base_url().'dashboard/content_edit/'.$row->id ?>"> <i class="glyphicon glyphicon-edit"></i></a>
                                                 </td>
                                            </tr>
                                        <?php } ?>
                                        </tbody>
                                    </table>
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