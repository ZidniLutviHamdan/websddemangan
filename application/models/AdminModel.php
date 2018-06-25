<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class AdminModel extends CI_Model{
    public function lihat_user(){
        return $this->db->get('v_user');
    }
}
?>