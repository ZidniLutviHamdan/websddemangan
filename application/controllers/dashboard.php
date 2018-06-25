<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller {

	function __construct(){
		 parent::__construct();
		 $this->load->model('m_admin');
       	 $this->load->helper("url");
       	 $this->load->library("Pdf");
        
	}

	function index(){
		$data['jumlahguru'] = $this->m_admin->getJumlahGuru();
		$this->template->load('admin/v_template','admin/v_dashboard',$data);
	}

	function login(){
		$user = $this->input->post('user');
		$pass = md5($this->input->post('pass'));

		$hasil	  = $this->db->get_where('admin',array(
			'username'	=> $user,
			'password'	=> $pass));

		if($hasil->num_rows()>0){
			$this->session->set_userdata(array('status_login'=>'admin'));
			$this->session->set_flashdata('pesan', '<div class="alert alert-success alert-dismissible" role="alert">
													  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
													  <strong>Selamat!</strong> Anda berhasil login.
													</div>');
			redirect('dashboard');
		}else{
			$this->session->set_flashdata('pesan', '<div class="alert alert-warning alert-dismissible" role="alert">
													  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
													  <strong>Maaf!</strong> Userama atau Password tidak ditemukan.
													</div>');
			redirect('home');
		}
	}

	function logout(){
		$this->session->sess_destroy();
		redirect('home');
	}


	// PROSESS DATA BERITA

	function berita(){
		$data['record'] = $this->db->get('berita');
		$this->template->load('admin/v_template','admin/v_berita',$data);
	}

	function halaman(){
		$data['record'] = $this->db->get('halaman');
		$this->template->load('admin/v_template','admin/v_halaman',$data);
	}

	function halaman_edit(){
		if(isset($_POST['update'])){
			if ($_FILES['gambar']['error'] <> 4) {

	            $config['upload_path'] = './upload/gambar';
	            $config['allowed_types'] = 'jpg|png|gif|bmp';
	            $this->load->library('upload', $config);
	 
	            if (!$this->upload->do_upload('gambar')) {
	                $error = array('error' => $this->upload->display_errors());
	                $this->index($error);
	            } else {
	                $hasil 	= $this->upload->data();
					$data = array(
						'judul_halaman' => $this->input->post('judul',true),
						'isi_halaman'	=> $this->input->post('isihalaman',true),
						'url'			=> $this->input->post('url',true),
						'gambar'		=> $hasil['file_name'],
						'tanggal'		=> date("Y-m-d h:i:s"));
					$this->db->where('id',$this->input->post('id',true));
					$this->db->update('halaman',$data);
					redirect('dashboard/halaman');
		        }
	        } else {
			        $data = array(
						'judul_halaman' => $this->input->post('judul',true),
						'url'			=> $this->input->post('url',true),
						'isi_halaman'	=> $this->input->post('isihalaman',true),
						'tanggal'		=> date("Y-m-d h:i:s"),
					);
				$this->db->where('id',$this->input->post('id',true));
				$this->db->update('halaman',$data);
				redirect('dashboard/halaman');
	        }
		}else{
			$data['title'] = 'Modul Halaman';
			$id = $this->uri->segment(3);
			$data['record'] = $this->db->get_where('halaman',array('id'=>$id))->row_array();
			$this->template->load('admin/v_template','admin/v_halaman_edit',$data);
		}
	}

	// PROSESS DATA CONTENT

	function content(){
		$data['title'] = 'Modul Content';
		$param = $this->uri->segment(3);
		$data['record'] = $this->db->get_where('content',array('kategori'=>$param));
		$this->template->load('admin/v_template','admin/v_content',$data);
	}

	function contentpost(){
		if(isset($_POST['simpan'])){
			if ($_FILES['gambar']['error'] <> 4) {

	            $config['upload_path'] = './upload/gambar';
	            $config['allowed_types'] = 'jpg|png|gif|bmp';
	            $this->load->library('upload', $config);
	 
	            if (!$this->upload->do_upload('gambar')) {
	                $error = array('error' => $this->upload->display_errors());
	                $this->index($error);
	            } else {
	                $hasil 	= $this->upload->data();
					$data = array(
						'judul_content' => $this->input->post('judul',true),
						'isi_content'	=> $this->input->post('isi',true),
						'kategori'		=> $this->input->post('kategori',true),
						'gambar'		=> $hasil['file_name']);
					$this->db->insert('content',$data);
					redirect('dashboard/content/'.$this->input->post('kategori',true));
		        }
	        } else {
			        $data = array(
						'judul_content' => $this->input->post('judul',true),
						'isi_content'	=> $this->input->post('isi',true),
						'kategori'		=> $this->input->post('kategori',true),
						// 'tanggal'		=> date("Y-m-d h:i:s"),
					);
				$this->db->insert('content',$data);
				redirect('dashboard/content/'.$this->input->post('kategori',true));
	        }
		}else{
			$data['title'] = 'Modul Halaman';
			$this->template->load('admin/v_template','admin/v_content_post',$data);
		}
	}

	function contentedit(){
		if(isset($_POST['simpan'])){
			if ($_FILES['gambar']['error'] <> 4) {

	            $config['upload_path'] = './upload/gambar_content';
	            $config['allowed_types'] = 'jpg|png|gif|bmp';
	            $this->load->library('upload', $config);
	 
	            if (!$this->upload->do_upload('gambar')) {
	                $error = array('error' => $this->upload->display_errors());
	                $this->index($error);
	            } else {
	                $hasil 	= $this->upload->data();
					$data = array(
						'judul_content' => $this->input->post('judul',true),
						'isi_content'	=> $this->input->post('isi',true),
						'kategori'		=> $this->input->post('kategori',true),
						'gambar'		=> $hasil['file_name'],
						'tanggal'		=> date("Y-m-d h:i:s"));
					$this->db->where('id',$this->input->post('id',true));
					$this->db->update('content',$data);
					redirect('dashboard/content/'.$this->input->post('kategori',true));
		        }
	        } else {
			        $data = array(
						'judul_content' => $this->input->post('judul',true),
						'isi_content'	=> $this->input->post('isi',true),
						'kategori'		=> $this->input->post('kategori',true),
						'tanggal'		=> date("Y-m-d h:i:s"),
					);
				$this->db->where('id',$this->input->post('id',true));
				$this->db->update('content',$data);
				redirect('dashboard/content/');
	        }
		}else{
			$data['title'] = 'Modul content';
			$id = $this->uri->segment(3);
			$data['record'] = $this->db->get_where('content',array('id'=>$id))->row_array();
			$this->template->load('admin/v_template','admin/v_content_edit',$data);
		}
	}

	function contenthapus($id){
		$this->db->where('id',$id);
	    $query = $this->db->get('content');
	    $row = $query->row();

	    unlink("./upload/gambar_content/$row->gambar");

	    $this->db->delete('content', array('id' => $id));
		redirect('dashboard/content');
	}

	function semuacontent(){
		$data['record'] = $this->db->get('content');
		$this->template->load('admin/v_template','admin/v_semua_content',$data);
	}
	// PROSES DATA KELAS

	function kelas (){
		$data['record'] = $this->db->get('kelas');
		$this->template->load('admin/v_template','admin/v_kelas',$data);
	}

	// PROSESS DATA GURU

	function guru(){
		$data['record'] = $this->db->get('guru');
		$this->template->load('admin/v_template','admin/v_guru',$data);
	}

	function tambahdataguru(){
		if(isset($_POST['simpan'])){
			$data = array(
				'id_guru'			=> $this->input->post('id_guru'),
				'nip'				=> $this->input->post('nip'),
				'nama_guru'			=> $this->input->post('nama_guru'),
				'jk'				=> $this->input->post('jk'),
				'agama'				=> $this->input->post('agama'),
				'alamat'			=> $this->input->post('alamat'),
				'no_telepon'		=> $this->input->post('no_telepon'),
				'foto'				=> $this->input->post('foto'),
				'status'			=> $this->input->post('status'));
			$this->db->insert('guru',$data);
			redirect('dashboard/guru');
		}else{
			$data['title'] = 'Modul Data Guru';
			$this->template->load('admin/v_template','admin/v_guru_add',$data);
		}
	}

	function guru_edit($id_guru){
		if(isset($_POST['simpan'])){
			$data = array(
				'id_guru'			=> $this->input->post('id_guru'),
				'nip'				=> $this->input->post('nip'),
				'nama_guru'			=> $this->input->post('nama_guru'),
				'jk'				=> $this->input->post('jk'),
				'agama'				=> $this->input->post('agama'),
				'alamat'			=> $this->input->post('alamat'),
				'no_telepon'		=> $this->input->post('no_telepon'),
				'foto'				=> $this->input->post('foto'),
				'status'			=> $this->input->post('status'));
			$this->db->where('id_guru',$this->input->post('id_guru'));
			$this->db->update('guru',$data);
			redirect('dashboard/guru');
		}else{
			$data['title'] = 'Modul Data Guru';
			$data['record'] = $this->db->get_where('guru',array('id_guru'=>$id_guru))->row_array();
			$this->template->load('admin/v_template','admin/v_guru_edit',$data);
		}
	}

	function guru_hapus($id_guru){
		$this->db->delete('guru',array('id_guru'=>$id_guru));
		redirect('dashboard/guru');
	}

	//====

	 function guru_update(){
     	$id_guru 				= $this->input->post('id_guru');
		$nip					= $this->input->post('nip');
		$nama_guru				= $this->input->post('nama_guru');
		$jk						= $this->input->post('jk');
		$agama					= $this->input->post('agama');
		$alamat					= $this->input->post('alamat');
		$no_telepon				= $this->input->post('no_telepon');
		$status					= $this->input->post('status');
		$foto					= $this->input->post('foto');

     		$data = array(
				'id_guru'			=> $id_guru,
				'nip'				=> $nip,
				'nama_guru'			=> $nama_guru,
				'jk'				=> $jk,
				'agama'				=> $agama,
				'alamat'			=> $alamat,
				'no_telepon'		=> $no_telepon,
				'status'			=> $status,
				'foto'				=> $foto
				);	
        $where = array('id_guru' => $id_guru);
        $this->m_admin->update_guru($where,$data,'guru');
        redirect('dashboard/guru');
    }

	// PROSESS DATA SISWA

	function siswa(){
		$data['title'] = 'Modul Data Siswa';
		$data['record'] = $this->db->get('siswa');
		$this->template->load('admin/v_template','admin/v_siswa',$data);
	}

	function siswa_add(){
		if(isset($_POST['simpan'])){
			$data = array(
				'nis'				=> $this->input->post('nis'),
				'nama_siswa'		=> $this->input->post('nama_siswa'),
				'jk'				=> $this->input->post('jk'),
				'agama'				=> $this->input->post('agama'),
				'alamat'			=> $this->input->post('alamat'),
				'tempat_lahir'		=> $this->input->post('tempat_lahir'),
				'tanggal_lahir'		=> $this->input->post('tanggal_lahir'),
				'no_telepon'		=> $this->input->post('no_telepon'),
				'status'			=> $this->input->post('status'),
				'foto'				=> $this->input->post('foto'));
			$this->db->insert('siswa',$data);
			redirect('dashboard/siswa');
		}else{
			$data['title'] = 'Modul Data Siswa';
			$this->template->load('admin/v_template','admin/v_siswa_add',$data);
		}
	}

	function siswa_edit($nis){
		if(isset($_POST['simpan'])){
			$data = array(
				'nis'				=> $this->input->post('nis'),
				'nama_siswa'		=> $this->input->post('nama_siswa'),
				'jk'				=> $this->input->post('jk'),
				'agama'				=> $this->input->post('agama'),
				'alamat'			=> $this->input->post('alamat'),
				'tempat_lahir'		=> $this->input->post('tempat_lahir'),
				'tanggal_lahir'		=> $this->input->post('tanggal_lahir'),
				'no_telepon'		=> $this->input->post('no_telepon'),
				'status'			=> $this->input->post('status'),
				'foto'				=> $this->input->post('foto'));
			$this->db->where('nis',	$this->input->post('nis'));
			$this->db->update('siswa',array('nis'=>$nis));
			redirect('dashboard/siswa');
		}else{
			$data['title'] = 'Modul Data Siswa';
			$data['record']=$this->db->get_where('siswa',array('nis'=>$nis))->row_array();
			$this->template->load('admin/v_template','admin/v_siswa_edit',$data);
		}
	}

	//=====

     function siswa_update(){
     	$nis 					= $this->input->post('nis');
		$nama_siswa				= $this->input->post('nama_siswa');
		$jk						= $this->input->post('jk');
		$agama					= $this->input->post('agama');
		$alamat					= $this->input->post('alamat');
		$tempat_lahir			= $this->input->post('tempat_lahir');
		$tanggal_lahir			= $this->input->post('tanggal_lahir');
		$no_telepon				= $this->input->post('no_telepon');
		$status					= $this->input->post('status');
		$foto					= $this->input->post('foto');

     		$data = array(
				'nis'				=> $nis,
				'nama_siswa'		=> $nama_siswa,
				'jk'				=> $jk,
				'agama'				=> $agama,
				'alamat'			=> $alamat,
				'tempat_lahir'		=> $tempat_lahir,
				'tanggal_lahir'		=> $tanggal_lahir,
				'no_telepon'		=> $no_telepon,
				'status'			=> $status,
				'foto'				=> $foto
				);	
        $where = array('nis' => $nis);
        $this->m_admin->update_siswa($where,$data,'siswa');
        redirect('dashboard/siswa');
    }

    //=====

	function siswa_hapus($nis){
		$this->db->delete('siswa',array('nis'=>$nis));
		redirect('dashboard/siswa');
	}

	function siswa_filter(){
		$data['get_kelas'] = $this->m_admin->get_option();
		$this->template->load('admin/v_template','admin/v_siswa',$data);
		}

	// function siswa_filter_kelas(){
	// 	if(isset($_POST['pilih'])){
	// 		$data = array(
	// 			'nis'				=> $this->input->post('nis'),
	// 			'nama'				=> $this->input->post('nama'),
	// 			'jk'				=> $this->input->post('jk'),
	// 			'agama'				=> $this->input->post('agama'),
	// 			'alamat'			=> $this->input->post('alamat'),
	// 			'ttl'				=> $this->input->post('ttl'),
	// 			'kelas'				=> $this->input->post('kelas'));
	// 		$this->db->where('kelas', $this->input->post('kelas'));
	// 		$this->db->SELECT('dir_siswa',$data);
	// 		redirect('dashboard/siswa');	
	// 	}else{
	// 		$data['title'] = 'Modul Data Siswa';
	// 		// $data['record']=$this->db->get_where('dir_siswa',array('kelas'=>$kelas))->row_array();
	// 		$this->template->load('admin/v_template','admin/v_siswa',$data);
	// 	}
	// }


	// function siswa_filter_kelas(){
	// 	if(isset($_POST['pilih'])){
	// 		$kelas=$this->input->post('kelas');
	// 		$data['record']=$this->db->get_where('dir_siswa',array('kelas'=>$kelas))->row_array();

	// 		$this->load->view('admin/v_template','admin/v_siswa',$data);	
	// 	}else{
	// 		$data['title'] = 'Modul Data Siswa';
	// 		$data['record']=$this->db->get_where('dir_siswa',array('kelas'=>$kelas))->row_array();
	// 		$this->template->load('admin/v_template','admin/v_siswa',$data);
	// 	}
	// }


	// PROSESS DATA ALUMNI

	function alumni(){
		$data['title'] = 'Modul Data Alumni';
		$data['record'] = $this->db->get('dir_alumni');
		$this->template->load('admin/v_template','admin/v_alumni',$data);
	}

	function alumni_add(){
		if(isset($_POST['simpan'])){
			$data = array(
				'nis'				=> $this->input->post('nis'),
				'nama'				=> $this->input->post('nama'),
				'jk'				=> $this->input->post('jk'),
				'agama'				=> $this->input->post('agama'),
				'alamat'			=> $this->input->post('alamat'),
				'ttl'				=> $this->input->post('ttl'),
				'angkatan'			=> $this->input->post('angkatan'));
			$this->db->insert('dir_alumni',$data);
			redirect('dashboard/alumni');
		}else{
			$data['title'] = 'Modul Data Alumni';
			$this->template->load('admin/v_template','admin/v_alumni_add',$data);
		}
	}

	function alumni_edit($id){
		if(isset($_POST['simpan'])){
			$data = array(
				'nis'				=> $this->input->post('nis'),
				'nama'				=> $this->input->post('nama'),
				'jk'				=> $this->input->post('jk'),
				'agama'				=> $this->input->post('agama'),
				'alamat'			=> $this->input->post('alamat'),
				'ttl'				=> $this->input->post('ttl'),
				'angkatan'			=> $this->input->post('angkatan'));
			$this->db->where('id',$this->input->post('id'));
			$this->db->update('dir_alumni',$data);
			redirect('dashboard/alumni');
		}else{
			$data['title'] = 'Modul Data Alumni';
			$data['record']=$this->db->get_where('dir_alumni',array('id'=>$id))->row_array();
			$this->template->load('admin/v_template','admin/v_alumni_edit',$data);
		}
	}

	function alumni_hapus($id){
		$this->db->delete('dir_alumni',array('id'=>$id));
		redirect('dashboard/alumni');
	}

	// PROSESS DATA FORUM

	function forum(){
		$data['record'] = $this->db->get('forum');
		$this->template->load('admin/v_template','admin/v_forum',$data);
	}

	function forum_detail($id){
		if(isset($_POST['simpan'])){
			$data = array(
				'id_forum' 	=> $this->input->post('id'),
				'komen' 	=> $this->input->post('komen'),
				'oleh' 		=> 'Administrator');
			$this->db->insert('forum_komen',$data);
			redirect('dashboard/forum_detail/'.$this->input->post('id'));
		}else{
			$data['forum'] = $this->db->get_where('forum',array('id'=>$id))->row_array();
			$data['komen'] = $this->db->get_where('forum_komen',array('id_forum'=>$id));
			$this->template->load('admin/v_template','admin/v_forum_detail',$data);
		}
	}

	function forum_hapus($id){
		$this->db->delete('forum',array('id'=>$id));
		redirect('dashboard/forum');
	}

	// PROSESS DATA GALLERY

	function gallery($param = NULL){
		if(isset($_POST['upload'])){
			if ($_FILES['gambar']['error'] <> 4) {

	            $config['upload_path'] = './upload/gallery';
	            $config['allowed_types'] = 'jpg|png|gif|bmp';
	            $this->load->library('upload', $config);
	 
	            if (!$this->upload->do_upload('gambar')) {
	                $error = array('error' => $this->upload->display_errors());
	                $this->index($error);
	            } else {
	                $hasil 	= $this->upload->data();
					$data = array(
						'nama'		=> $this->input->post('nama'),
						'gambar'	=> $hasil['file_name'],
                        'kategori'  => $this->input->post('kategori')
                    );
					// $this->db->where('id',$this->input->post('id',true));
					$this->db->insert('gallery',$data);
					redirect('dashboard/gallery');
		        }
	        } else {
				redirect('dashboard/gallery');
	        }
		}else{
			$data['gallery']=$this->db->get('gallery');
			$this->template->load('admin/v_template','admin/v_gallery',$data);
		}
	}

	function galleryhapus($id){
		$this->db->where('id',$id);
	    $query = $this->db->get('gallery');
	    $row = $query->row();

	    unlink("./upload/gallery/$row->gambar");

	    $this->db->delete('gallery', array('id' => $id));
		redirect('dashboard/gallery');
	}

	// PROSESS DATA BANNER

	function banner(){
		if(isset($_POST['simpan'])){
			$config['upload_path'] 		= './assets/images';
			$config['allowed_types'] 	= 'jpg|jpeg|png|gif';

			$this->load->library('upload',$config);
			$this->upload->do_upload();
			$hasil 	= $this->upload->data();
			$data	= array(
				'judul'		=> $this->input->post('judul'),
				'link'		=> $this->input->post('url'),
				'gambar'	=> $hasil['file_name']
				);
			$this->db->insert('banner',$data);
			redirect('dashboard/banner');
		}else{
			$data['title'] = 'Banner';
			$data['record']=$this->db->get('banner')->result();
			$this->template->load('admin/v_template','admin/v_banner',$data);
		}
	}

	function banner_add(){
		$data['title'] = 'Banner';
		$this->template->load('admin/v_template','admin/v_banner_add',$data);
	}

	function banner_edit($id){
		if(isset($_POST['update'])){
			$data	= array(
				'judul'		=> $this->input->post('judul'),
				'url'		=> $this->input->post('url'),
				);
			$this->db->where('id',$this->input->post('id',true));
			$this->db->update('banner',$data);
			redirect('dashboard/banner');
		}else{
			$data['title'] = 'Banner';
			$data['record'] = $this->db->get_where('banner',array('id'=>$id))->row_array();
			$this->template->load('admin/template','admin/v_banner_edit',$data);
		}
	}

	function banner_hapus($id){
		$this->db->where('id',$id);
	    $query = $this->db->get('banner');
	    $row = $query->row();

	    unlink("./assets/images/$row->nama_file");

	    $this->db->delete('banner', array('id' => $id));
		redirect('dashboard/banner');
	}

	// PROSESS DATA HEADER

	function header(){
		if(isset($_POST['upload'])){
			$config['upload_path'] 		= './assets/images';
			$config['allowed_types'] 	= 'jpg|jpeg|png|gif';

			$this->load->library('upload',$config);
			$this->upload->do_upload();
			$hasil 	= $this->upload->data();
			$data	= array(
				'kategori'	=> 'header',
				'gambar'	=> $hasil['file_name']
				);
			$this->db->insert('gambar',$data);
			redirect('dashboard/header');
		}else{
			$data['title'] = 'Background';
			$data['record'] = $this->db->query('SELECT * FROM gambar WHERE kategori = "header" GROUP BY id DESC LIMIT 1')->row_array();
			$this->template->load('admin/v_template','admin/v_header',$data);
		}
	}

	// PROSESS DATA BACKGROUND

	function background(){
		if(isset($_POST['upload'])){
			$config['upload_path'] 		= './assets/images';
			$config['allowed_types'] 	= 'jpg|jpeg|png|gif';

			$this->load->library('upload',$config);
			$this->upload->do_upload();
			$hasil 	= $this->upload->data();
			$data	= array(
				'kategori'	=> 'background',
				'gambar'	=> $hasil['file_name']
				);
			$this->db->insert('gambar',$data);
			redirect('dashboard/background');
		}else{
			$data['title'] = 'Background';
			$data['record'] = $this->db->query('SELECT * FROM gambar WHERE kategori = "background" GROUP BY id DESC LIMIT 1')->row_array();
			$this->template->load('admin/v_template','admin/v_background',$data);
		}
	}

	// PROSESS DATA EXTERNAL LINK

	function external_link(){
		if(isset($_POST['simpan'])){
			$data = array(
				'judul' => $this->input->post('judul'),
				'url' => $this->input->post('url'),
				'target' => $this->input->post('target'),
				);
			$this->db->insert('external_link',$data);
			redirect('dashboard/external_link');
		}else{
			$data['title'] = 'External Link';
			$data['record'] = $this->db->get('external_link');
			$this->template->load('admin/v_template','admin/v_external_link',$data);
		}
	}

	function external_link_hapus($id){
		$this->db->where('id',$id);
		$this->db->delete('external_link');
		redirect('dashboard/external_link');
	}


	// PROSESS DATA PRESTASI

	function prestasi(){
		$data['title'] = 'Modul Prestasi';
		$param = $this->uri->segment(3);
		$data['record'] = $this->db->get_where('prestasi',array('kategori'=>$param));
		$this->template->load('admin/v_template','admin/v_prestasi',$data);
	}

	function prestasipost(){
		if(isset($_POST['simpan'])){
			if ($_FILES['gambar']['error'] <> 4) {

	            $config['upload_path'] = './upload/gambar';
	            $config['allowed_types'] = 'jpg|png|gif|bmp';
	            $this->load->library('upload', $config);
	 
	            if (!$this->upload->do_upload('gambar')) {
	                $error = array('error' => $this->upload->display_errors());
	                $this->index($error);
	            } else {
	                $hasil 	= $this->upload->data();
					$data = array(
						'judul_prestasi' => $this->input->post('judul',true),
						'isi_prestasi'	=> $this->input->post('isi',true),
						'kategori'		=> $this->input->post('kategori',true),
						'gambar'		=> $hasil['file_name']);
					$this->db->insert('prestasi',$data);
					redirect('dashboard/prestasi/'.$this->input->post('kategori',true));
		        }
	        } else {
			        $data = array(
						'judul_prestasi' => $this->input->post('judul',true),
						'isi_prestasi'	=> $this->input->post('isi',true),
						'kategori'		=> $this->input->post('kategori',true),
						// 'tanggal'		=> date("Y-m-d h:i:s"),
					);
				$this->db->insert('prestasi',$data);
				redirect('dashboard/prestasi/'.$this->input->post('kategori',true));
	        }
		}else{
			$data['title'] = 'Modul Halaman';
			$this->template->load('admin/v_template','admin/v_prestasi_post',$data);
		}
	}


	function semuaprestasi(){
		$data['record'] = $this->db->get('prestasi');
		$this->template->load('admin/v_template','admin/v_semua_prestasi',$data);
	}

/*	function prestasiedit($id){
		if(isset($_POST['simpan'])){
			if ($_FILES['gambar']['error'] <> 4) {
				$nmfile = "file_".time();
	            $config['upload_path'] 		= './upload/gambar';
	            $config['allowed_types'] 	= 'jpg|png|gif|bmp';
	            $config['file_name'] 		= $nmfile;

	            $this->load->library('upload', $config);
	 
	            if (!$this->upload->do_upload('gambar')) {
	                $error = array('error' => $this->upload->display_errors());
	                $this->index($error);
	            } else {
	                $hasil 	= $this->upload->data();
					$data = array(
						'judul_prestasi' => $this->input->post('judul',true),
						'isi_prestasi'	=> $this->input->post('isi',true),
						'kategori'		=> $this->input->post('kategori',true),
						'gambar'		=> $hasil['file_name'],
						'tanggal'		=> date("Y-m-d h:i:s"));
					$this->db->where('id',$this->input->post('id',true));
					$this->db->update('prestasi',$data);
					redirect('dashboard/prestasi/'.$this->input->post('kategori',true));
		        }
	        } else {
			        $data = array(
						'judul_prestasi' => $this->input->post('judul',true),
						'isi_prestasi'	=> $this->input->post('isi',true),
						'kategori'		=> $this->input->post('kategori',true),
						'tanggal'		=> date("Y-m-d h:i:s"),
					);
				$this->db->where('id',$this->input->post('id',true));
				$this->db->update('prestasi',$data);
				redirect('dashboard/prestasi/'.$this->input->post('kategori',true));
	        }
		}else{
			$data['title'] = 'Modul Prestasi';
			$data['record'] = $this->db->get_where('prestasi',array('id'=>$id))->row_array();
			$this->template->load('admin/v_template','admin/v_prestasi_edit',$data);
		}
	}
*/
	// EDIT BUAT SENDIRI

	function prestasiedit(){
		if(isset($_POST['simpan'])){
			if ($_FILES['gambar']['error'] <> 4) {

	            $config['upload_path'] = './upload/gambar_prestasi';
	            $config['allowed_types'] = 'jpg|png|gif|bmp';
	            $this->load->library('upload', $config);
	 
	            if (!$this->upload->do_upload('gambar')) {
	                $error = array('error' => $this->upload->display_errors());
	                $this->index($error);
	            } else {
	                $hasil 	= $this->upload->data();
					$data = array(
						'judul_prestasi' => $this->input->post('judul',true),
						'isi_prestasi'	=> $this->input->post('isi',true),
						'kategori'		=> $this->input->post('kategori',true),
						'gambar'		=> $hasil['file_name'],
						'tanggal'		=> date("Y-m-d h:i:s"));
					$this->db->where('id',$this->input->post('id',true));
					$this->db->update('prestasi',$data);
					redirect('dashboard/prestasi/'.$this->input->post('kategori',true));
		        }
	        } else {
			        $data = array(
						'judul_prestasi' => $this->input->post('judul',true),
						'isi_prestasi'	=> $this->input->post('isi',true),
						'kategori'		=> $this->input->post('kategori',true),
						'tanggal'		=> date("Y-m-d h:i:s"),
					);
				$this->db->where('id',$this->input->post('id',true));
				$this->db->update('prestasi',$data);
				redirect('dashboard/semuaprestasi');
	        }
		}else{
			$data['title'] = 'Modul Prestasi';
			$id = $this->uri->segment(3);
			$data['record'] = $this->db->get_where('prestasi',array('id'=>$id))->row_array();
			$this->template->load('admin/v_template','admin/v_prestasi_edit',$data);
		}
	}

	function prestasihapus($id){
		$this->db->where('id',$id);
	    $query = $this->db->get('prestasi');
	    $row = $query->row();

	    unlink("./upload/gambar_prestasi/$row->gambar");

	    $this->db->delete('prestasi', array('id' => $id));
		redirect('dashboard/prestasi');
		$this->template->load('admin/v_template','admin/v_semua_prestasi');
	}

	//================================
	function cetak_laporan_siswa (){
		$data['siswa'] = $this->m_admin->cetak_siswa();
		$this->load->view('admin/v_cetak_laporan_siswa', $data);
	}


}
