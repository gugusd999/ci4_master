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

	public function pdf()
	{
		$data['namasekolah'] = "SMP Diponegoro";
		$data['alamatsekolah'] = "Jl tunggul ametung  no 20 kecamatan tumpang kabupaten malang";
		$mpdf = new \Mpdf\Mpdf();
		$mpdf->curlAllowUnsafeSslRequests = true;
		$mpdf->showImageErrors = true;
		$mpdf->imageVars['myvariable'] = file_get_contents('b4t/assets/image/logosekolah.png');
		$mpdf->WriteHTML(
			view('pdf/ppdb', $data)
		);
		$mpdf->Output(date('ymdhis').'.pdf', 'D');
	
	}

	//--------------------------------------------------------------------

}
