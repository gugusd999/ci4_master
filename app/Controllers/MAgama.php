<?php

namespace App\Controllers;



class MAgama extends BaseController
{

    protected $db;

    public function __construct(){
        $this->db = \Config\Database::connect();
    }

    public function Index($edit = "")
    {
        if(isset($_POST['edit'])){

            $data = $_POST['edit'];

            unset($_POST['edit']);

            $this->db->query("UPDATE mAgama SET nama = '".$data['nama']."' WHERE kode = '".$data['kode']."' ");

            $data['success'] = 'data telah disimpan';

        }
        if(isset($_POST['data'])){

            $data = $_POST['data'];

            unset($_POST['data']);

            $this->db->query("INSERT INTO mAgama (kode, nama) VALUE('".$data['kode']."', '".$data['nama']."') ");

            $data['success'] = 'data telah disimpan';

        }
        if ($edit != "") {
            $data['edit'] = $this->db->query("SELECT * FROM mAgama WHERE kode = '$edit' ")->getRow();

            $data['agama'] = $this->db->query("SELECT * FROM mAgama LIMIT 0, 5")->getResultObject();
            return view('mAgama/index', $data);
        }else{
            $data['agama'] = $this->db->query("SELECT * FROM mAgama LIMIT 0, 5")->getResultObject();
            return view('mAgama/index', $data);
        }
        
    }
    
    public function formUpdate()
    {
        return view('mAgama/update');
    }

    public function hapus($kode)
    {
        $this->db->query("DELETE FROM mAgama WHERE kode = '$kode' ");
        return redirect()->to('/m-agama');
    }

}