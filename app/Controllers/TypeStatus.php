<?php namespace App\Controllers;

class TypeStatus extends BaseController
{
    protected $db;
    protected $builder;

    public function __construct()
    {
        $this->db = \Config\Database::connect();
        $this->builder = $this->db->table('typeStatus');
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
                typeStatus
            WHERE 
                 id LIKE '%$pencarian%'  
 OR type_status LIKE '%$pencarian%' 
            ORDER BY
                id $order
            LIMIT
                $start , $end
        ");
        $arr = [];
        $dataArr = $qr->getResultObject();
        $dataTotal = count($qr->getResultObject());
        foreach ($dataArr as $key => $value) {
            $child = [];
            $child[] = $value->id; 
$child[] = $value->type_status; 

            $child[] = "
                <center>
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
            return view('typeStatus/index', $data);
        }
        if ($edit != "") {
            $data['edit'] = $this->db->query("SELECT * FROM typeStatus WHERE id = '$edit' ")->getRow();
            $data['form'] = $this->form();
            return view('typeStatus/index', $data);
        }else{
            $data['form'] = $this->form();
            return view('typeStatus/index', $data);
        }
    }

    public function simpan()
    {
        $data = $_POST['data'];
        $this->builder->insert($data);
        return redirect()->to('form-typeStatus');
    }

    public function formUpdate()
    {
        return view('typeStatus/update');
    }

    public function hapus()
    {
        $kode = $_POST['id'];
        $this->db->query("DELETE FROM typeStatus WHERE id = '$kode' ");
        return redirect()->to('/typeStatus'); // ubah disini
    }
}
