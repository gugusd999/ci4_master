<?php namespace App\Controllers;

class Home extends BaseController
{
	public function __construct(){
		helper('cookie');
	}

	public function index()
	{
		$ss = session();
		$data['form'] = $this->form();
		$data['download'] = $ss->download; 
		return view('welcome_message', $data);
	}

	public function home()
	{
		$data = session();
		$data->name = 'hooki';
		echo view('admin/home');
	}

	public function pdf($id = null)
	{
		$db = \Config\Database::connect();

        $getData = $db->query("SELECT *  FROM ppdb WHERE id = '$id' ")->getResultObject();
        $getData2 = $db->query("SELECT *  FROM sub_ppdb WHERE ppdb_id = '$id' ")->getResultObject();
        $getData3 = $db->query("SELECT *  FROM m_sekolah ")->getResultObject()[0];
		$data['datas'] = $getData[0];
		$data['datas2'] = $getData2;
		$data['namasekolah'] = $getData3->nama;
		$data['alamatsekolah'] = "$getData3->alamat $getData3->kecamatan $getData3->kecamatan, Kode pos $getData3->kodepos";
		$data['alamatsekolah2'] = "No Telp. $getData3->telepon, Website $getData3->website, Email $getData3->email";
		$mpdf = new \Mpdf\Mpdf();
		$mpdf->curlAllowUnsafeSslRequests = true;
		$mpdf->showImageErrors = true;
		$mpdf->imageVars['myvariable'] = file_get_contents('b4t/assets/image/'.$getData3->logo);
		$mpdf->WriteHTML(
			view('pdf/ppdb', $data)
		);
		$mpdf->Output(date('ymdhis').'.pdf', 'D');
	}

	//--------------------------------------------------------------------

}
