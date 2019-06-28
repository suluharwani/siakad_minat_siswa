<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Login extends CI_Controller {
  public function index()
  {
    $data['title'] = "Login";
    $this->load->view('login/login', $data);

  }
}
/* End of file ${TM_FILENAME:} */
/* Location: ./${TM_FILEPATH/.+((?:application).+)//:application/controllers/} */
