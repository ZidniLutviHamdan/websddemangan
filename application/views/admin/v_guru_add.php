        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header">Dashboard / Guru</h3>
                    </div>
                    <!-- /.col-lg-12 -->
                    <div class="col-sm-12">
                        <div class="panel panel-default">
                        <div class="panel-heading">
                            Tambah data guru
                        </div>
                        <div class="panel-body">
                            <?php echo form_open('dashboard/tambahdataguru') ?>
                            <div class="col-sm-6">
                                <div class="form-group">  
                                    <label>ID</label>
                                    <input name="id_guru" type="text" class="form-control" placeholder="ID Guru" id="id_guru" required="">
                                    <!-- <input name="id" type="hidden" class="form-control" value="<?php echo $record['id'] ?>"> -->
                                </div>
                                <div class="form-group">  
                                    <label>NIP</label>
                                    <input name="nip" type="text" class="form-control" placeholder="NIP" id="nip" required="">
                                    <!-- <input name="id" type="hidden" class="form-control" value="<?php echo $record['id'] ?>"> -->
                                </div>
                                <div class="form-group">
                                    <label>Nama</label>
                                    <input name="nama_guru" type="text" class="form-control" placeholder="Nama" id="nama_guru" required="">
                                </div>
                                <div class="form-group">
                                    <label>Alamat</label>
                                    <textarea name="alamat" class="form-control" rows="3" placeholder="Alamat" id="alamat" required=""></textarea>
                                </div>
                                <div class="form-group">
                                    <label>Jenis Kelamin</label>
                                    <p><input type="radio" name="jk" value="L" checked> Laki-laki
                                    <input type="radio" name="jk" value="P" style="margin-left:15px;"> Perempuan
                                </div>
                                
                            </div>
                            <div class="col-sm-6">
                               <div class="form-group">
                                    <label>Nomor Telepon</label>
                                    <input name="no_telepon" type="text" class="form-control" placeholder="No. Telepon" id="nama" required="">
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
                                 <div class="form-group">
                                    <label>Status</label>
                                    <select name="status" class="form-control" style="width: 40%;">
                                        <option>Aktif</option>
                                        <option>Tidak</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>Foto Guru</label>
                                    <input name="foto" type="file">
                                    <p class="help-block">jpg | png | gif</p>
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <button name="simpan" type="submit" class="btn btn-info btn-sm"><i class="glyphicon glyphicon-ok"></i> Simpan</button> | 
                                <a href="<?php echo base_url().'dashboard/guru' ?>"> Batal</a>
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