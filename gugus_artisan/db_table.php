<?php

require_once 'table_opsi_set.php';

function crdb()
{
    $arr = array(
        array(
            "table" => "m_sekolah",
            "data" => array(
                "id" => ai(11),
                "logo" => char(255),
                "nama" => textlong(),
                "npsn" => char(255),
                "bentuk_pendidikan_id" => char(255),
                "alamat" => char(255),
                "kelurahan" => char(255),
                "kecamatan" => char(255),
                "kota" => char(255),
                "provinsi" => char(255),
                "rt" => char(255),
                "rw" => char(255),
                "kodepos" => char(255),
                "lintang" => char(255),
                "bujur" => char(255),
                "telepon" => char(255),
                "nomorfax" => char(255),
                "email" => char(255),
                "email" => char(255),
                "website" => char(255),
                )
            ),
        array(
            "table" => "m_keahlian_lab",
            "data" => array(
                "id" => ai(11),
                "nama" => char(255),
                )
            ),
        array(
            "table" => "m_sumber_gaji",
            "data" => array(
                "id" => ai(11),
                "nama" => char(255),
                )
            ),
        array(
            "table" => "m_lembaga_pengangkat",
            "data" => array(
                "id" => ai(11),
                "nama" => char(255),
                )
            ),
        array(
            "table" => "m_ptk",
            "data" => array(
                "id" => ai(11),
                "nama" => char(255),
                )
            ),
        array(
            "table" => "m_kepegawaian",
            "data" => array(
                "id" => ai(11),
                "nama" => char(255),
                )
            ),
        array(
            "table" => "m_pekerjaan",
            "data" => array(
                "id" => ai(11),
                "nama" => char(255),
                )
            ),
        array(
            "table" => "m_kebutuhan_khusus",
            "data" => array(
                "id" => ai(11),
                "nama" => char(255),
            )
        ),
        array(
            "table" => "m_pendidikan",
            "data" => array(
                "id" => ai(11),
                "nama" => char(255),
                )
            ),
        array(
            "table" => "m_bentuk_pendidikan",
            "data" => array(
                "id" => ai(11),
                "nama" => char(255),
                )
            ),
        array(
            "table" => "m_sumber_listrik",
            "data" => array(
                "id" => ai(11),
                "nama" => char(255),
                )
            ),
        array(
            "table" => "m_aksesInt",
            "data" => array(
                "id" => ai(11),
                "nama" => char(255),
                )
            ),
        array(
            "table" => "m_jenis_bantuan",
            "data" => array(
                "id" => ai(11),
                "nama" => char(255),
                )
            ),
        array(
            "table" => "m_jenis_layanan_khusus",
            "data" => array(
                "id" => ai(11),
                "nama" => char(255),
                )
            ),
        array(
            "table" => "m_tempat_tinggal",
            "data" => array(
                "id" => ai(11),
                "nama" => char(255),
                )
            ),
        array(
            "table" => "m_tempat_tinggal",
            "data" => array(
                "id" => ai(11),
                "nama" => char(255),
                )
            ),
        array(
            "table" => "m_moda_transportasi",
            "data" => array(
                "id" => ai(11),
                "nama" => char(255),
                )
            ),
        array(
            "table" => "m_alasan_layak_pip",
            "data" => array(
                "id" => ai(11),
                "nama" => char(255),
                )
            ),
        array(
            "table" => "m_agama",
            "data" => array(
                "id" => ai(11),
                "nama" => char(255),
                )
            ),
        array(
            "table" => "m_penghasilan",
            "data" => array(
                "id" => ai(11),
                "nama" => char(255),
                )
            ),
        array(
            "table" => "m_kopetensiKhusus",
            "data" => array(
                "id" => ai(11),
                "nama" => char(255),
                )
            ),
        array(
            "table" => "m_mata_pelajaran",
            "data" => array(
                "id" => ai(11),
                "nama" => char(255),
                )
            ),
        array(
            "table" => "m_tingkat",
            "data" => array(
                "id" => ai(11),
                "nama" => char(255),
                )
            ),
        array(
            "table" => "type_status",
            "data" => array(
                "id" => ai(11),
                "type_status" => char(255),
                )
            ),
        array(
            "table" => "status",
            "data" => array(
                "id" => char(255),
                "status" => char(255),
                "type_status" => int(),
                )
            ),
        array(
            "table" => "sarana_prasarana",
            "data" => array(
                "id" => ai(11),
                "judul" => char(255),
                "keterangan" => char(255),
                "status_id" => int(),
                "gambar" => char(),
                "created_at" => timestamp(),
                )
            ),
        array(
            "table" => "prestasi",
            "data" => array(
                "id" => ai(11),
                "judul" => char(255),
                "keterangan" => char(255),
                "status_id" => int(),
                "gambar" => char(),
                "created_at" => timestamp(),
                )
            ),
        array(
            "table" => "ekstrakulikuler",
            "data" => array(
                "id" => ai(11),
                "judul" => char(255),
                "keterangan" => char(255),
                "status_id" => int(),
                "gambar" => char(),
                "created_at" => timestamp(),
                )
            ),
        array(
            "table" => "galeri",
            "data" => array(
                "id" => ai(11),
                "judul" => char(255),
                "status_id" => int(),
                "gambar" => char(),
                "created_at" => timestamp(),
                )
            ),
        array(
            "table" => "video",
            "data" => array(
                "id" => ai(11),
                "judul" => char(255),
                "status_id" => int(),
                "video" => char(),
                "created_at" => timestamp(),
                )
            ),
        array(
            "table" => "artikel",
            "data" => array(
                "id" => ai(11),
                "judul" => char(255),
                "keterangan" => text(),
                "status_id" => int(),
                "gambar" => char(255),
                "created_at" => timestamp(),
                )
            ),
        array(
            "table" => "agenda_sekolah",
            "data" => array(
                "id" => ai(11),
                "judul" => char(255),
                "keterangan" => text(),
                "status_id" => int(),
                "created_at" => timestamp(),
                )
            ),
        array(
            "table" => "pengumuman",
            "data" => array(
                "id" => ai(11),
                "judul" => char(255),
                "keterangan" => text(),
                "status_id" => int(),
                "created_at" => timestamp(),
                )
            ),
        array(
            "table" => "info_kilat",
            "data" => array(
                "id" => ai(11),
                "judul" => char(255),
                "keterangan" => text(),
                "status_id" => int(),
                "created_at" => timestamp(),
                )
            ),
        array(
            "table" => "materi_ajar",
            "data" => array(
                "id" => ai(11),
                "status_id" => int(),
                "kopetensi_khusus_id" => int(),
                "judul" => char(255),
                "tingkat_id" => int(),
                "penyusun" => text(),
                "file" => char(),
                "created_at" => timestamp(),
                )
            ),
        array(
            "table" => "ppdb",
            "data" => array(
                "id" => ai(11),
                "nama_lengkap" => char(),
                "jenis_kelamin" => int(),
                "nisn" => char(),
                "nisd" => char(),
                "ns_skhun" => char(),
                "nun_sd" => char(),
                "nik" => char(),
                "tempat_lahir" => char(),
                "tanggal_lahir" => char(),
                "agama" => char(),
                "berkebutuhan_khusus" => char(),
                "alamat" => char(),
                "rt" => char(),
                "rw" => char(),
                "kelurahan" => char(),
                "kecamatan" => char(),
                "kota_kabupaten" => char(),
                "provinsi" => char(),
                "kodepos" => char(),
                "alat_transportasi" => char(),
                "jenis_tinggal" => char(),
                "no_telp" => char(),
                "email" => char(),
                "asal_sekolah_sd" => char(),
                "kps" => char(),
                "nokps" => char(),
                "nama_ayah" => char(),
                "tempat_lahir_ayah" => char(),
                "tanggal_lahir_ayah" => char(),
                "pekerjaan_ayah" => char(),
                "pendidikan_ayah" => char(),
                "penghasilan_bulanan_ayah" => char(),
                "nama_ibu" => char(),
                "tempat_lahir_ibu" => char(),
                "tanggal_lahir_ibu" => char(),
                "pekerjaan_ibu" => char(),
                "pendidikan_ibu" => char(),
                "penghasilan_bulanan_ibu" => char(),
                "nama_wali" => char(),
                "tempat_lahir_wali" => char(),
                "tanggal_lahir_wali" => char(),
                "pekerjaan_wali" => char(),
                "pendidikan_wali" => char(),
                "penghasilan_bulanan_wali" => char(),
                "tinggi_badan" => char(),
                "berat_badan" => char(),
                "jarak_rumah_ke_sekolah" => char(),
                "waktu_tempuh_ke_sekolah" => char(),
                "jumlah_saudara" => int(3),
                "created_at" => timestamp(),
            )
        )
    );
    return $arr;
}
