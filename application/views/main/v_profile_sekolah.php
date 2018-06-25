			<?php $this->load->view('main/v_sidebar') ?>

			<div class="col-sm-8 content">

				<div class="panel panel-default welcome">
				  	<!-- <div class="panel-heading"><i class="glyphicon glyphicon-list-alt"></i>Profile Sekolah</div> -->
				  	<div class="panel-body">
				  	 <h3 class="breack">Profile Sekolah</h3>
				  	<table>
				  	<style>
					table, th, td {
					    
					    border-collapse: collapse;
					}
					th, td {
					    padding: 5px;
					    text-align: left; 
					    border-bottom: 1px solid #ddd;   
					}
					</style>
				  		<thead>
				  		<table style="width: 100%">
				  		 <?php foreach($record->result() as $row){ ?>
				  			<tr>
				  				<th>Nama Kepala Sekolah</th>
				  				<td>:</td>
				  				 <td><?php echo $row->nm_kepsek ?></td>
				  			</tr>
				  			<tr>
				  				<th>Nama Sekolah</th>
				  				<td>:</td>
				  				 <td><?php echo $row->nm_sek ?></td>		
				  			</tr>
				  			<tr>
				  				<th>NPSN</th>
				  				<td>:</td>
				  				 <td><?php echo $row->npsn ?></td>	
				  			</tr>
				  			<tr>
				  				<th>NSS</th>
				  				<td>:</td>
				  				  <td><?php echo $row->nss ?></td>		
				  			</tr>
				  			<tr>
				  				<th>Alamat</th>
				  				<td>:</td>
				  				  <td><?php echo $row->alamat ?></td>
				  			</tr>
				  			<tr>
				  				<th>Kode Pos</th>
				  				<td>:</td>
				  				<td><?php echo $row->kd_pos ?></td>	
				  			</tr>
				  			<tr>
				  				<th>Provinsi</th>
				  				<td>:</td>	
				  				 <td><?php echo $row->provinsi ?></td>
				  			</tr>
				  			<tr>
				  				<th>Kabupaten</th>
				  				<td>:</td>	
				  				<td><?php echo $row->kab ?></td>	
				  			</tr>
				  			<tr>
				  				<th>Status Sekolah</th>
				  				<td>:</td>	
				  				<td><?php echo $row->status_sek ?></td>	
				  			</tr>
				  			<tr>
				  				<th>Tahun Beroperasi</th>
				  				<td>:</td>	
				  				<td><?php echo $row->thn_operasi ?></td>			  				
				  			</tr>
				  			<tr>
				  				<th>Jenjang Pendidikan</th>	
				  				<td>:</td>
				  				 <td><?php echo $row->jnjng_pend ?></td>			  				
				  			</tr>
				  			<tr>
				  				<th>Akreditasi</th>
				  				<td>:</td>
				  				 <td><?php echo $row->akreditasi ?></td>
				  			</tr>
				  			<tr>
				  				<th>Tanggal.SK Akreditasi</th>
				  				<td>:</td>
				  				<td><?php echo $row->tgl_sk ?></td>
				  			</tr>
				  			<tr>
				  				<th>Email</th>	
				  				<td>:</td>
				  				<td><?php echo $row->email ?></td>			  				
				  			</tr>
				  			<tr>
				  				<th>Luas Tanah</th>	
				  				<td>:</td>	
				  				 <td><?php echo $row->luas_tnh ?></td>		  				
				  			</tr>
				  		</tdead>

				  		 <tbody>  
                        <?php } ?>
                        </tbody>


				  	</table>
				  	<!-- sdsfsdfsdf -->
				  	</div>
				</div>
			</div><!-- content -->