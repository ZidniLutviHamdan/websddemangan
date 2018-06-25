<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_siswa extends CI_Model
{
	
	function __construct()
	{
		parent::__construct();
        $this->load->database();
	}

	function sidebar(){
		$data = array(
			'informasi' => $this->db->query('SELECT * FROM informasi GROUP BY id DESC LIMIT 3'),
			'berita' 	=> $this->db->query('SELECT * FROM content WHERE kategori = "berita" GROUP BY id DESC LIMIT 7'),
			'gallery' 	=> $this->db->query('SELECT * FROM gallery GROUP BY id DESC LIMIT 1')->row_array(),
			'sambutan' 	=> $this->db->get_where('halaman',array('url'=>'sambutan'))->row_array(),
			'banner' 	=> $this->db->get('banner'),
		);
		return $this->load->view('main/v_sidebar',$data,true);
	}

	function getSiswaAdd() {
		if(isset($_POST['simpan'])){
			$data = array(
				'nis'				=> $this->input->post('nis'),
				'nama_siswa'		=> $this->input->post('nama'),
				'jk'				=> $this->input->post('jk'),
				'agama'				=> $this->input->post('agama'),
				'alamat'			=> $this->input->post('alamat'),
				'tempat_lahir'		=> $this->input->post('tempat_lahir'),
				'tanggal_lahir'		=> $this->input->post('tanggal_lahir'),
				'no_telepon'		=> $this->input->post('no_telepon'),
				'foto'				=> $this->input->post('foto'));
			$this->db->insert('siswa',$data);
			redirect('Siswa');
		}else{
			$data['title'] = 'Modul Data Siswa';
			$this->template->load('main/v_template','main/v_ppdb',$data);
		}
	}
}