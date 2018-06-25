        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header">Dashboard / Siswa</h3>
                    </div>
                    <!-- /.col-lg-12 -->
                    <div class="col-sm-12">
                        <div class="panel panel-default">
                        <div class="panel-heading">
                            Edit Data Siswa
                        </div>
                        <div class="panel-body">
                            <?php echo form_open('dashboard/siswa_update') ?>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>NIS</label>
                                    <input value="<?php echo $record['nis'] ?>" name="nis" type="text" class="form-control" placeholder="NIS" id="nis" required="">
                                    <!-- <input name="nis" type="hidden" class="form-control" value="<?php echo $record['nis'] ?>"> -->
                                </div>
                                <div class="form-group">
                                    <label>Nama</label>
                                    <input value="<?php echo $record['nama_siswa'] ?>" name="nama_siswa" type="text" class="form-control" placeholder="Nama Siswa" id="nama_siswa" required="">
                                </div>
                                <div class="form-group">
                                    <label>Alamat</label>
                                    <textarea name="alamat" class="form-control" rows="3" placeholder="Alamat" id="alamat" required=""><?php echo $record['alamat'] ?></textarea>
                                </div>
                                <div class="form-group">
                                    <label>Jenis Kelamin</label>
                                    <p><input type="radio" name="jk" value="L" checked> Laki-laki
                                    <input type="radio" name="jk" value="P" style="margin-left:15px;"> Perempuan
                                </div>
                                <div class="form-group">
                                    <label>Agama</label>
                                    <select name="agama" class="form-control" style="width:40%;">
                                        <option>Islam</option>
                                        <option>Kristen</option>
                                        <option>Hindu</option>
                                        <option>Budha</option>
                                        <option>Katholik</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>Tempat Lahir</label>
                                    <input value="<?php echo $record['tempat_lahir'] ?>" name="tempat_lahir" type="text" class="form-control" placeholder="Tempat Lahir" id="tempat_lahir" required="">
                                </div>
                                <div class="form-group">
                                    <label>Tanggal Lahir</label>
                                    <input value="<?php echo $record['tanggal_lahir'] ?>" name="tanggal_lahir" type="text" class="form-control" placeholder="Tanggal Lahir" id="tanggal_lahir" required="">
                                </div>
                                <div class="form-group">
                                    <label>No. Telepom</label>
                                    <input value="<?php echo $record['no_telepon'] ?>" name="no_telepon" type="text" class="form-control" placeholder="No. Telepon" id="no_telepon" required="" >
                                </div>
                                <div class="form-group">
                                    <label>Status</label>
                                    <select name="status" class="form-control" style="width: 40%;">
                                        <option>Aktif</option>
                                        <option>Lulus</option>
                                        <option>Keluar</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>Foto Siswa</label>
                                    <input name="foto" type="file">
                                    <p class="help-block">jpg | png | gif</p>
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <button name="simpan" type="submit" class="btn btn-info btn-sm"><i class="glyphicon glyphicon-ok"></i> Update</button> | 
                                <a href="<?php echo base_url().'dashboard/siswa' ?>"> Batal</a>
                            </div>
                            </form>
                        </div>
                    </div>
                    </div>
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </div>