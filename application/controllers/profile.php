<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Profile extends CI_Controller {

	function __construct(){
		 parent::__construct();
		 $this->load->model('m_profile');
       	 $this->load->helper("url");
	}

	function index(){
		$data = array(
			'title'=>'HOME',
			'informasi' => $this->db->query('SELECT * FROM informasi GROUP BY id DESC LIMIT 3'),
			'berita' 	=> $this->db->query('SELECT * FROM content WHERE kategori = "berita" GROUP BY id DESC LIMIT 7'),
			'gallery' 	=> $this->db->query('SELECT * FROM gallery GROUP BY id DESC LIMIT 1')->row_array(),
			'banner' 	=> $this->db->get('banner'),
			'profile' 	=> $this->db->get_where('halaman',array('url'=>'profile'))->row_array(),
			);
		$this->template->load('main/v_template','main/v_profile',$data);
	}

	function getProfilSekolah (){
		$data = array(
			'sidebar' 	=> $this->sidebar());
		$this->template->load('main/v_template','main/v_home',$data);
	}
	
	//tambahan

	function profile(){
		$data = array(
			'title'		=>'Akademik',
			'sidebar' 	=> $this->sidebar(),
			'record'	=> $this->db->get('profile'),
		);
		$this->template->load ('main/v_template','main/v_profile_sekolah',$data);
	}

	/*function sejarah(){
		$data = array(
			'title' 	=>'Akademik',
			'sidebar'	=> $this->sidebar(),
			'record'	=> $this->db->query('SELECT * FROM ttg_sekolah WHERE id = 3'),
			);
		$this->template->load('main/v_template','main/v_sejarah_sekolah',$data);
	}*/

}
