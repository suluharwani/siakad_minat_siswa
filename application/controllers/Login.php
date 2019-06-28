<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Login extends CI_Controller {
  public function index()
  {

    $this->load->model('Mdl_login');
    $check_adm = $this->Mdl_login->check_user_admin();
    if ($check_adm>0) {
      $data['title'] = "Login";
      $this->load->view('login/login', $data);
    }else {
      $data['title'] = "Register";
      $this->load->view('register/register', $data);
    }

  }
}
/* End of file ${TM_FILENAME:} */
/* Location: ./${TM_FILEPATH/.+((?:application).+)//:application/controllers/} */
