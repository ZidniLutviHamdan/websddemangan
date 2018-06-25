        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header">Dashboard / Prestasi</h3>
                    </div>

                    <div class="col-sm-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <em style="text-align: right;">Post Prestasi</em>
                            </div>
                            <!-- /.panel-heading -->
                            <div class="panel-body">
                                <?php $this->load->view('admin/editor') ?>
                                <?php echo form_open_multipart('dashboard/prestasipost') ?>
                                    <div class="form-group">
                                        <label>Judul Prestasi</label>
                                        <input style="width: 50%;" name="judul" type="text" class="form-control" required="">
                                        <!-- <input name="id" type="hidden" class="form-control" value="<?php echo $record['id'] ?>">
                                        <input name="url" type="hidden" class="form-control" value="<?php echo $record['url'] ?>"> -->
                                    </div>
                                    <div class="form-group">
                                        <label>Category</label>
                                        <select name="kategori" class="form-control" style="width: 30%;">
                                            <option value="sekolah">Prestasi Sekolah</option>
                                            <option value="guru">Prestasi Guru</option>
                                            <option value="siswa">Prestasi Siswa</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label>Isi Content</label>
                                        <textarea name="isi" class="form-control" rows="6"></textarea>
                                    </div>
                                    <div class="form-group">
                                        <label>Gambar</label>
                                        <input name="gambar" type="file">
                                        <p class="help-block">jpg | png | gif</p>
                                    </div>
                                    <button name="simpan" type="submit" class="btn btn-primary"><i class="glyphicon glyphicon-send"></i> Post Prestasi</button> | <button type="reset" class="btn btn-danger">Reset</button>
                                </form>
                            </div>
                            <!-- /.panel-body -->
                        </div>
                    </div>
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </div>