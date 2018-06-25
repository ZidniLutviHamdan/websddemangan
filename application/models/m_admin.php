<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
* 
*/
class M_admin extends CI_Model
{
	
	function __construct()
	{
		parent::__construct();
        $this->load->database();
	}

	  function getJumlahGuru(){
        return $this->db->count_all('dir_guru');
    }

    function getJumlahSiswa(){
    	return $this->db->count_all('dir_siswa');
    }

    function getPrestasi(){
    	return $this->db->count_all('prestasi');
    }

    function get_option(){
        $this->db->select('*');
        $this->db->from('kelas');
        $query = $this->db->get();
        return $query->result();
    }

    //===

     function edit_data($where, $table){
        return $this->db->get_where($table, $where);
    }

    function update_siswa($where, $data, $table){
        $this->db->where($where);
        $this->db->update($table, $data);
    }

    function cetak_siswa(){
        $query = $this->db->get('siswa');
        return $query->result_array();
    }

    function update_guru($where, $data, $table){
        $this->db->where($where);
        $this->db->update($table, $data);
    }
	
}