<?php namespace App\Controllers;

class Home extends BaseController
{
	public function __construct(){
		helper('cookie');
	}

	public function index()
	{
		$data['form'] = $this->form();
		return view('welcome_message', $data);
	}

	public function home()
	{
		$data = session();
		$data->name = 'hooki';
		echo view('admin/home');
	}

	//--------------------------------------------------------------------

}
