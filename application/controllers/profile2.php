<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Profile2 extends CI_Controller {

	function __construct(){
		 parent::__construct();
		 $this->load->model('m_profile');
       	 $this->load->helper("url");
	}

	function index(){
		$data['direktori'] =$this->m_profile->getDirektori();
		$this->template->load('main/v_template','main/v_forum',$data);
	}

	function sidebar(){
		$data['sidebar'] =$this->m_profile->getSidebar();
	}

	function sejarah(){
		$data = array(
			'title' 	=>'Akademik',
			'sidebar'	=> $this->sidebar(),
			'record'	=> $this->db->query('SELECT * FROM ttg_sekolah WHERE id = 3'),
			);
		$this->template->load('main/v_template','main/v_sejarah_sekolah',$data);
	}

	function visi(){
		$data = array(
			'sidebar'	=>$this->sidebar(),
			'record'	=>$this->db->query('SELECT * FROM ttg_sekolah'),
			);
		$this->template->load('main/v_template','main/v_visi_misi',$data);
	}

	function misi(){
		$data = array(
			'sidebar'	=>$this->sidebar(),
			'record'	=>$this->db->query('SELECT * FROM ttg_sekolah'),
			);
		$this->template->load('main/v_template','main/v_visi_misi',$data);
	}

	function visi_misi (){
		$data = array(
			'visi'	=>$this->visi(),
			'misi'	=>$this->misi(),
			);
	}

	function struktur_organisasi(){
		$data = array(
			'sidebar'	=>$this->sidebar(),
			'record'	=>$this->db->query('SELECT * FROM ttg_sekolah WHERE id = '),
			);
		$this->template->load('main/v_template','main/v_struktur_organisasi',$data);
	}
		
	

	/*function kepsek(){
		$data = array(
			'sidebar'	=>$this->sidebar(),
			'record'	=>$this->db->query('SELECT * FROM ttg_sekolah WHERE id = '),
			);
		$this->template->load('main/v_template','main/v_kepse',$data);
	}*/

		
}
