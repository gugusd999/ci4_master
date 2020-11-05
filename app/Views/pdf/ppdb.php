<style>
    td{
        font-size: 14px;
    }
</style>
<table width="100%" style="border-bottom: 1px solid black; padding-bottom: 10px;">
    <tr>
        <td width="150px">
            <img width="100px" src="var:myvariable"/>
        </td>
        <td>
            <center>
                <h1><?= $namasekolah ?></h1>
            </center>
            <br>
            <center>
            <p style="font-size: 12px;"><?= $alamatsekolah ?></p>
            </center>
            <center>
            <p style="font-size: 12px;"><?= $alamatsekolah2 ?></p>
            </center>
        </td>
    </tr>
</table>
<br>
<table width="100%">
    <tr>
        <td>
            <center>
                <h2>Penerimaan Peserta Didik Baru</h2>
            </center>
        </td>
    </tr>
</table>
<br>
<table width="100%">
    <tr>
        <td width="250px">
            a. Nama Lengkap
        </td>
        <td width="30px">
            :
        </td>
        <td>
            <?php if(isset($datas->nama_lengkap)) echo $datas->nama_lengkap ?>
        </td>
    </tr>
    <tr>
        <td width="250px">
            b. Jenis Kelamin
        </td>
        <td width="30px">
            :
        </td>
        <td>
            <?php if(isset($datas->jenis_kelamin)) echo $datas->jenis_kelamin ?>
        </td>
    </tr>
    <tr>
        <td width="250px">
            c. NISN
        </td>
        <td width="30px">
            :
        </td>
        <td>
            <?php if(isset($datas->nisn)) echo $datas->nisn ?>
        </td>
    </tr>
    <tr>
        <td width="250px">
            d. No Seri Ijazah SD
        </td>
        <td width="30px">
            :
        </td>
        <td>
            <?php if(isset($datas->nisd)) echo $datas->nisd ?>
        </td>
    </tr>
    <tr>
        <td width="250px">
            e. No Seri SKHUN
        </td>
        <td width="30px">
            :
        </td>
        <td>
            <?php if(isset($datas->ns_skhun)) echo $datas->ns_skhun ?>
        </td>
    </tr>
    <tr>
        <td width="250px">
            f. No Ujian Nasional SD/MI
        </td>
        <td width="30px">
            :
        </td>
        <td>
            <?php if(isset($datas->nun_sd)) echo $datas->nun_sd ?>
        </td>
    </tr>
    <tr>
        <td width="250px">
            g. No Induk Kepedudukan (NIK)
        </td>
        <td width="30px">
            :
        </td>
        <td>
            <?php if(isset($datas->nik)) echo $datas->nik ?>
        </td>
    </tr>
    <tr>
        <td width="250px">
            h. Tempat, Tanggal Lahir
        </td>
        <td width="30px">
            :
        </td>
        <td>
            <?php if(isset($datas->tempat_lahir)) echo $datas->tempat_lahir ?>,
            <?php if(isset($datas->tanggal_lahir)) echo $datas->tanggal_lahir ?>
        </td>
    </tr>
    <tr>
        <td width="250px">
            i. Agama
        </td>
        <td width="30px">
            :
        </td>
        <td>
            <?php if(isset($datas->agama)) echo $datas->agama ?>
        </td>
    </tr>
    <tr>
        <td width="250px">
            j. Berkebutuhan Khusus
        </td>
        <td width="30px">
            :
        </td>
        <td>
            <?php if(isset($datas->berkebutuhan_khusus)) echo $datas->berkebutuhan_khusus ?>
        </td>
    </tr>
    <tr>
        <td width="250px">
            k. Alamat Tempat Tinggal
        </td>
        <td width="30px">
        </td>
        <td>
            <?php if(isset($datas->alamat)) echo $datas->alamat ?>
        </td>
    </tr>
    <tr>
        <td width="250px" style="padding-left: 20px;">
            Kelurahan/Desa
        </td>
        <td width="30px">
            :
        </td>
        <td>
            <?php if(isset($datas->kelurahan)) echo $datas->kelurahan ?>
        </td>
    </tr>
    <tr>
        <td width="250px" style="padding-left: 20px;">
            Kecamatan
        </td>
        <td width="30px">
            :
        </td>
        <td>
            <?php if(isset($datas->kecamatan)) echo $datas->kecamatan ?>
        </td>
    </tr>
    <tr>
        <td width="250px" style="padding-left: 20px;">
            Kabupaten/Kota
        </td>
        <td width="30px">
            :
        </td>
        <td>
            <?php if(isset($datas->kota_kabupaten)) echo $datas->kota_kabupaten ?>
        </td>
    </tr>
    <tr>
        <td width="250px" style="padding-left: 20px;">
            Provinsi
        </td>
        <td width="30px">
            :
        </td>
        <td>
            <?php if(isset($datas->provinsi)) echo $datas->provinsi ?>
        </td>
    </tr>
    <tr>
        <td width="250px" style="padding-left: 20px;">
            Kodepos
        </td>
        <td width="30px">
            :
        </td>
        <td>
            <?php if(isset($datas->kodepos)) echo $datas->kodepos ?>
        </td>
    </tr>
    <tr>
        <td width="250px">
            l. Alat Transportasi ke Sekolah
        </td>
        <td width="30px">
            :
        </td>
        <td>
            <?php if(isset($datas->alat_transportasi)) echo $datas->alat_transportasi ?>
        </td>
    </tr>
    <tr>
        <td width="250px">
            m. Jenis Tinggal
        </td>
        <td width="30px">
            :
        </td>
        <td>
            <?php if(isset($datas->jenis_tinggal)) echo $datas->nisn ?>
        </td>
    </tr>
    <tr>
        <td width="250px">
            n. No. Telepon/Hp
        </td>
        <td width="30px">
            :
        </td>
        <td>
            <?php if(isset($datas->notelp)) echo $datas->notelp ?>
        </td>
    </tr>
    <tr>
        <td width="250px">
            o. Email Pribadi
        </td>
        <td width="30px">
            :
        </td>
        <td>
            <?php if(isset($datas->email)) echo $datas->email ?>
        </td>
    </tr>
    <tr>
        <td width="250px">
            p. Asal Sekolah SD/MI
        </td>
        <td width="30px">
            :
        </td>
        <td>
            <?php if(isset($datas->asal_sekolah_sd)) echo $datas->asal_sekolah_sd ?>
        </td>
    </tr>
    <tr>
        <td width="250px">
           q. Apakah Sebagai Penerima KPS
        </td>
        <td width="30px">
            :
        </td>
        <td>
            <?php if(isset($datas->kps)) echo $datas->kps ?>,
            <?php if(isset($datas->nokps)) echo $datas->nokps ?>
        </td>
    </tr>
    <tr>
        <td width="250px">
           r. Tinggi badan
        </td>
        <td width="30px">
            :
        </td>
        <td>
            <?php if(isset($datas->tinggi_badan)) echo $datas->tinggi_badan ?>
        </td>
    </tr>
    <tr>
        <td width="250px">
           s. Jarak Rumah ke Sekolah
        </td>
        <td width="30px">
            :
        </td>
        <td>
            <?php if(isset($datas->jarak_rumah_ke_sekolah)) echo $datas->jarak_rumah_ke_sekolah ?>
        </td>
    </tr>
    <tr>
        <td width="250px">
           t. Waktu Tempuh ke Sekolah
        </td>
        <td width="30px">
            :
        </td>
        <td>
            <?php if(isset($datas->waktu_tempuh_ke_sekolah)) echo $datas->waktu_tempuh_ke_sekolah ?>
        </td>
    </tr>
    <tr>
        <td width="250px">
           v. Jumlah Saudara
        </td>
        <td width="30px">
            :
        </td>
        <td>
            <?php if(isset($datas->jumlah_saudara)) echo $datas->jumlah_saudara ?>
        </td>
    </tr>
</table>
<br>
<hr>
<br>
<table width="100%">
    <tr>
        <td colspan="3">
            <center>
                <h3>
                    Data Ayah Kandung
                </h3>
            </center>
        </td>
    </tr>
    <tr>
        <td width="250px">
            w. Nama Ayah
        </td>
        <td width="30px">
            :
        </td>
        <td>
            <?php if(isset($datas->nama_ayah)) echo $datas->nama_ayah ?>
        </td>
    </tr>
    <tr>
        <td width="250px">
            - Tempat, Tanggal Lahir
        </td>
        <td width="30px">
            :
        </td>
        <td>
            <?php if(isset($datas->tempat_lahir_ayah)) echo $datas->tempat_lahir_ayah ?>,
            <?php if(isset($datas->tanggal_lahir_ayah)) echo $datas->tanggal_lahir_ayah ?>
        </td>
    </tr>
    <tr>
        <td width="250px">
            - Pekerjaan
        </td>
        <td width="30px">
            :
        </td>
        <td>
            <?php if(isset($datas->pekerjaan_ayah)) echo $datas->pekerjaan_ayah ?>
        </td>
    </tr>
    <tr>
        <td width="250px">
            - Pendidikan
        </td>
        <td width="30px">
            :
        </td>
        <td>
            <?php if(isset($datas->poendidikan_ayah)) echo $datas->poendidikan_ayah ?>
        </td>
    </tr>
    <tr>
        <td width="250px">
            - Penghasilan Bulanan
        </td>
        <td width="30px">
            :
        </td>
        <td>
            <?php if(isset($datas->penghasilan_bulanan_ayah)) echo $datas->penghasilan_bulanan_ayah ?>
        </td>
    </tr>
</table>
<br>
<table width="100%">
    <tr>
        <td colspan="3">
            <center>
                <h3>
                    Data Ibu Kandung
                </h3>
            </center>
        </td>
    </tr>
    <tr>
        <td width="250px">
            x. Nama Ibu
        </td>
        <td width="30px">
            :
        </td>
        <td>
            <?php if(isset($datas->nama_ibu)) echo $datas->nama_ibu ?>
        </td>
    </tr>
    <tr>
        <td width="250px">
            - Tempat, Tanggal Lahir
        </td>
        <td width="30px">
            :
        </td>
        <td>
            <?php if(isset($datas->tempat_lahir_ibu)) echo $datas->tempat_lahir_ibu ?>
            <?php if(isset($datas->tanggal_lahir_ibu)) echo $datas->tanggal_lahir_ibu ?>
        </td>
    </tr>
    <tr>
        <td width="250px">
            - Pekerjaan
        </td>
        <td width="30px">
            :
        </td>
        <td>
            <?php if(isset($datas->pekerjaan_ibu)) echo $datas->pekerjaan_ibu ?>
        </td>
    </tr>
    <tr>
        <td width="250px">
            - Pendidikan
        </td>
        <td width="30px">
            :
        </td>
        <td>
            <?php if(isset($datas->pendidikan_ibu)) echo $datas->pendidikan_ibu ?>
        </td>
    </tr>
    <tr>
        <td width="250px">
            - Penghasilan Bulanan
        </td>
        <td width="30px">
            :
        </td>
        <td>
            <?php if(isset($datas->penghasilan_bulanan_ibu)) echo $datas->penghasilan_bulanan_ibu ?>
        </td>
    </tr>
</table>
<br>
<table width="100%">
    <tr>
        <td colspan="3">
            <center>
                <h3>
                    Data Wali
                </h3>
            </center>
        </td>
    </tr>
    <tr>
        <td width="250px">
            y. Nama Wali
        </td>
        <td width="30px">
            :
        </td>
        <td>
            <?php if(isset($datas->nama_wali)) echo $datas->nama_wali ?>
        </td>
    </tr>
    <tr>
        <td width="250px">
            - Tempat, Tanggal Lahir
        </td>
        <td width="30px">
            :
        </td>
        <td>
            <?php if(isset($datas->tempat_lahir_wali)) echo $datas->tempat_lahir_wali ?>,
            <?php if(isset($datas->tanggal_lahir_wali)) echo $datas->tanggal_lahir_wali ?>
        </td>
    </tr>
    <tr>
        <td width="250px">
            - Pekerjaan
        </td>
        <td width="30px">
            :
        </td>
        <td>
            <?php if(isset($datas->pekerjaan_wali)) echo $datas->pekerjaan_wali ?>
        </td>
    </tr>
    <tr>
        <td width="250px">
            - Pendidikan
        </td>
        <td width="30px">
            :
        </td>
        <td>
            <?php if(isset($datas->pendidikan_wali)) echo $datas->pendidikan_wali ?>
        </td>
    </tr>
    <tr>
        <td width="250px">
            - Penghasilan Bulanan
        </td>
        <td width="30px">
            :
        </td>
        <td>
            <?php if(isset($datas->penghasilan_bulanan_wali)) echo $datas->penghasilan_bulanan_wali ?>
        </td>
    </tr>
</table>
<br>
<hr>
<br>
<table width="100%">
    <tr>
        <td colspan="4">
            <center>
                <h3>
                    Catatan Prestasi
                </h3>
            </center>
        </td>
    </tr>
</table>
<style>
    .mm{
        border-collapse: collapse;
        padding: 5px;
    }
    .mm td{
        border: 1px solid black;
        padding: 8px 5px;
    }
</style>
<table width="100%" class="mm">
    <tr>
        <td style="font-size: 14px; font-weight: bold;text-align:center;">Jenis Prestasi</td>
        <td style="font-size: 14px; font-weight: bold;text-align:center;">Tingkat</td>
        <td style="font-size: 14px; font-weight: bold;text-align:center;">Tahun</td>
        <td style="font-size: 14px; font-weight: bold;text-align:center;">Penyelenggaraan</td>
    </tr>
   <?php foreach ($datas2 as $key => $datas2) : ?>
    <tr>
        <td style="font-size: 14px; font-weight: bold;text-align:center;"><?= $datas2->jenis_prestasi ?></td>
        <td style="font-size: 14px; font-weight: bold;text-align:center;"><?= $datas2->tingkat ?></td>
        <td style="font-size: 14px; font-weight: bold;text-align:center;"><?= $datas2->tahun ?></td>
        <td style="font-size: 14px; font-weight: bold;text-align:center;"><?= $datas2->penyelenggaraan ?></td>
    </tr>
   <?php endforeach; ?>
</table>