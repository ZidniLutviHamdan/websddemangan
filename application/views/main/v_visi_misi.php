<?php $this->load->view('main/v_sidebar') ?>

			<div class="col-sm-8 content">
			<style type="text/css">
                    .breack{
                        border-bottom: 1px dashed #000000;
                        margin-bottom: 15px;
                        padding-bottom: 10px;
                        margin-right: -15px;
                    }
                    .content a:hover{
                        text-decoration: none;
                    }
                </style>

				<div class="panel panel-default welcome">
				  	<!-- <div class="panel-heading"><i class="glyphicon glyphicon-list-alt"></i>Profile Sekolah</div> -->
				  	<div class="panel-body">
				  	 <h3 class="breack">Visi</h3>

				  	<div class="dataTable_wrapper" style="margin-right:-15px;">        
						  <?php foreach($record->result() as $row){ ?>
						  <td><?php echo $row->isi_halaman?></td>
                        <?php } ?>
					</div>

					<h3 class="breack">Misi</h3>
					<div class="dataTable_wrapper" style="margin-right:-15px;">        
						  <?php foreach($record->result() as $row){ ?>
						  <td><?php echo $row->isi_halaman ?></td>
                        <?php } ?>
					</div>

				  	</div>
				</div>
			</div><!-- content -->