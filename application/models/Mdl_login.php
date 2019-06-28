<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Mdl_login extends CI_Model {
  public function check_user_admin(){
    return $this->db->get('admin')->num_rows();
  }
}
/* End of file ${TM_FILENAME:} */
/* Location: ./${TM_FILEPATH/.+((?:application).+)//:application/models/} */
