<?php namespace App\Controllers;

class Ppdb extends BaseController
{
    protected $db;
    protected $builder;

    public function __construct()
    {
        $this->db = \Config\Database::connect();
        $this->builder = $this->db->table('ppdb');
    }

    function json()
    {
        // order
        $order = 'DESC';
        if (isset($_POST['order'])) : $order = $_POST['order'][0]['dir'];
        else : $setorder = '';
        endif;
        // pencarian
        $pencarian = "";
        if (isset($_POST['search']['value'])) {
            $pencarian = $_POST['search']['value'];
        }
        // limit set   
        $start = $_POST['start'];
        $end = $_POST['length'];
        // draw
        $draw = $_POST['draw'];
        // query prosses
        $qr = $this->db->query("
            SELECT 
                * 
            FROM
                ppdb
            WHERE 
                 id LIKE '%$pencarian%'  
 OR nama_lengkap LIKE '%$pencarian%'  
 OR jenis_kelamin LIKE '%$pencarian%'  
 OR nisn LIKE '%$pencarian%'  
 OR nisd LIKE '%$pencarian%'  
 OR ns_skhun LIKE '%$pencarian%'  
 OR nun_sd LIKE '%$pencarian%'  
 OR nik LIKE '%$pencarian%'  
 OR tempat_lahir LIKE '%$pencarian%'  
 OR agama LIKE '%$pencarian%'  
 OR berkebutuhan_khusus LIKE '%$pencarian%'  
 OR alamat LIKE '%$pencarian%'  
 OR rt LIKE '%$pencarian%'  
 OR rw LIKE '%$pencarian%'  
 OR kelurahan LIKE '%$pencarian%'  
 OR kecamatan LIKE '%$pencarian%'  
 OR kota_kabupaten LIKE '%$pencarian%'  
 OR provinsi LIKE '%$pencarian%'  
 OR kodepos LIKE '%$pencarian%'  
 OR alat_transportasi LIKE '%$pencarian%'  
 OR jenis_tinggal LIKE '%$pencarian%'  
 OR no_telp LIKE '%$pencarian%'  
 OR email LIKE '%$pencarian%'  
 OR asal_sekolah_sd LIKE '%$pencarian%'  
 OR kps LIKE '%$pencarian%'  
 OR nokps LIKE '%$pencarian%'  
 OR nama_ayah LIKE '%$pencarian%'  
 OR tanggal_lahir LIKE '%$pencarian%'  
 OR tempat_lahir_ayah LIKE '%$pencarian%'  
 OR tanggal_lahir_ayah LIKE '%$pencarian%'  
 OR pekerjaan_ayah LIKE '%$pencarian%'  
 OR pendidikan_ayah LIKE '%$pencarian%'  
 OR penghasilan_bulanan_ayah LIKE '%$pencarian%'  
 OR nama_ibu LIKE '%$pencarian%'  
 OR tempat_lahir_ibu LIKE '%$pencarian%'  
 OR tanggal_lahir_ibu LIKE '%$pencarian%'  
 OR pekerjaan_ibu LIKE '%$pencarian%'  
 OR pendidikan_ibu LIKE '%$pencarian%'  
 OR penghasilan_bulanan_ibu LIKE '%$pencarian%'  
 OR nama_wali LIKE '%$pencarian%'  
 OR tempat_lahir_wali LIKE '%$pencarian%'  
 OR tanggal_lahir_wali LIKE '%$pencarian%'  
 OR pekerjaan_wali LIKE '%$pencarian%'  
 OR pendidikan_wali LIKE '%$pencarian%'  
 OR penghasilan_bulanan_wali LIKE '%$pencarian%'  
 OR tinggi_badan LIKE '%$pencarian%'  
 OR berat_badan LIKE '%$pencarian%'  
 OR jarak_rumah_ke_sekolah LIKE '%$pencarian%'  
 OR waktu_tempuh_ke_sekolah LIKE '%$pencarian%'  
 OR jumlah_saudara LIKE '%$pencarian%'  
 OR created_at LIKE '%$pencarian%' 
            ORDER BY
                id $order
            LIMIT
                $start , $end
        ");
        $arr = [];
        $dataArr = $qr->getResultObject();
        $dataTotal = $this->builder->countAll();
        foreach ($dataArr as $key => $value) {
            $child = [];
            $child[] = $value->id; 
$child[] = $value->nama_lengkap; 
$child[] = $value->jenis_kelamin; 
$child[] = $value->nisn; 
$child[] = $value->nisd; 
$child[] = $value->ns_skhun; 
$child[] = $value->nun_sd; 
$child[] = $value->nik; 
$child[] = $value->tempat_lahir; 
$child[] = $value->agama; 
$child[] = $value->berkebutuhan_khusus; 
$child[] = $value->alamat; 
$child[] = $value->rt; 
$child[] = $value->rw; 
$child[] = $value->kelurahan; 
$child[] = $value->kecamatan; 
$child[] = $value->kota_kabupaten; 
$child[] = $value->provinsi; 
$child[] = $value->kodepos; 
$child[] = $value->alat_transportasi; 
$child[] = $value->jenis_tinggal; 
$child[] = $value->no_telp; 
$child[] = $value->email; 
$child[] = $value->asal_sekolah_sd; 
$child[] = $value->kps; 
$child[] = $value->nokps; 
$child[] = $value->nama_ayah; 
$child[] = $value->tanggal_lahir; 
$child[] = $value->tempat_lahir_ayah; 
$child[] = $value->tanggal_lahir_ayah; 
$child[] = $value->pekerjaan_ayah; 
$child[] = $value->pendidikan_ayah; 
$child[] = $value->penghasilan_bulanan_ayah; 
$child[] = $value->nama_ibu; 
$child[] = $value->tempat_lahir_ibu; 
$child[] = $value->tanggal_lahir_ibu; 
$child[] = $value->pekerjaan_ibu; 
$child[] = $value->pendidikan_ibu; 
$child[] = $value->penghasilan_bulanan_ibu; 
$child[] = $value->nama_wali; 
$child[] = $value->tempat_lahir_wali; 
$child[] = $value->tanggal_lahir_wali; 
$child[] = $value->pekerjaan_wali; 
$child[] = $value->pendidikan_wali; 
$child[] = $value->penghasilan_bulanan_wali; 
$child[] = $value->tinggi_badan; 
$child[] = $value->berat_badan; 
$child[] = $value->jarak_rumah_ke_sekolah; 
$child[] = $value->waktu_tempuh_ke_sekolah; 
$child[] = $value->jumlah_saudara; 
$child[] = $value->created_at; 

            $child[] = "
                <center>
                    <a href='" . site_url('ppdb/edit/'.$value->id) . "' class='btn btn-sm btn-warning'>Edit</a>
                    <button data-id='" . $value->id . "' modal-open-delete class='btn btn-sm btn-danger'>Delete</button>
                </center>
            ";
            $arr[] = $child;
        }
        $r = array(
            "draw"            => $draw,
            "recordsTotal"    => intval($dataTotal),
            "recordsFiltered" => intval($dataTotal),
            "data"            => $arr,
        );
        echo json_encode($r);
    }

    public function Index($edit = "")
    {
        if(isset($_POST['data'])){
            $data = $_POST['data'];
            unset($_POST['data']);
            $this->builder->insert($data);
            $data['success'] = 'data telah disimpan';
            $data['form'] = $this->form();
            return redirect()->to('/ppdb'); // ubah disini
        }else{
            $data['form'] = $this->form();
            return view('admin/ppdb/index', $data);
        }
    }


    public function edit($edit = "")
    {
        $data['edit'] = $this->db->query("SELECT * FROM ppdb WHERE id = '$edit' ")->getRow();
        $data['form'] = $this->form();
        return view('admin/ppdb/index', $data);
    }
    
    public function update()
    {
        $data = $_POST['data'];
        $id = $data['id'];
        unset($data['id']);
        $this->builder->where('id', $id);
        $this->builder->update($data);
        return redirect()->to('/ppdb'); // ubah disini
    }

    public function formUpdate()
    {
        return view('admin/ppdb/update');
    }

    public function hapus()
    {
        $kode = $_POST['id'];
        $this->db->query("DELETE FROM ppdb WHERE id = '$kode' ");
        return redirect()->to('/ppdb'); // ubah disini
    }
}
