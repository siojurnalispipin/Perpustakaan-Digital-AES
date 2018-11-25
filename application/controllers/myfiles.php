<?php defined('BASEPATH') or exit('No direct script access allowed');

class Myfiles extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
    }

    public function index()
    {
        $id_user = $this->session->userdata('id_petugas');
        $listfiles = $this->db->get_where('dokumen', array('id_user' => $id_user))->result_array();

        $data = array(
            "contents" => "myfiles",
            "files" => $listfiles,
        );

        $this->template->load('layoutbackend', 'enkripsi/myfiles', $data);

    }

    public function download()
    {

        if (!empty($this->uri->segment(3))) {
            $id = $this->uri->segment(3);
            $query = $this->db->get_where("dokumen", array('id' => $id))->row();
            $nama = $query->nama_enkrip;
            $file = ($_SERVER['DOCUMENT_ROOT'] . "/ciperpus/uploads/" . $nama);

            if (file_exists($file)) {
                header('Content-Description: File Transfer');
                header('Content-Type: application/octet-stream');
                header('Content-Disposition: attachment; filename=' . $nama . '.encrypted');
                header('Content-Transfer-Encoding: binary');
                header('Expires: 0');
                header('Cache-Control: must-revalidate, post-check=0, pre-check=0');
                header('Pragma: public');
                header('Content-Length: ' . filesize($file));
                readfile($file);
                exit;
            }
        }


    }
}