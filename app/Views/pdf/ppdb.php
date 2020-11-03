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
        <td style="text-align: center;">
            <h1><?= $namasekolah ?></h1>
            <br>
            <p><?= $alamatsekolah ?></p>
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
        <td style="text-align: center;">
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
        <td style="text-align: center;">
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
        <td style="text-align: center;">
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
        <td style="text-align: center;">
            <?php if(isset($datas->nisn)) echo $datas->nisn ?>
        </td>
    </tr>
    <tr>
        <td width="250px">
            e. No Seri SKHUN
        </td>
        <td width="30px">
            :
        </td>
        <td style="text-align: center;">
            <?php if(isset($datas->nisn)) echo $datas->nisn ?>
        </td>
    </tr>
    <tr>
        <td width="250px">
            f. No Ujian Nasional SD/MI
        </td>
        <td width="30px">
            :
        </td>
        <td style="text-align: center;">
            <?php if(isset($datas->nisn)) echo $datas->nisn ?>
        </td>
    </tr>
    <tr>
        <td width="250px">
            g. No Induk Kepedudukan (NIK)
        </td>
        <td width="30px">
            :
        </td>
        <td style="text-align: center;">
            <?php if(isset($datas->nisn)) echo $datas->nisn ?>
        </td>
    </tr>
    <tr>
        <td width="250px">
            h. Tempat, Tanggal Lahir
        </td>
        <td width="30px">
            :
        </td>
        <td style="text-align: center;">
            <?php if(isset($datas->nisn)) echo $datas->nisn ?>
        </td>
    </tr>
    <tr>
        <td width="250px">
            i. Agama
        </td>
        <td width="30px">
            :
        </td>
        <td style="text-align: center;">
            <?php if(isset($datas->nisn)) echo $datas->nisn ?>
        </td>
    </tr>
    <tr>
        <td width="250px">
            j. Berkebutuhan Khusus
        </td>
        <td width="30px">
            :
        </td>
        <td style="text-align: center;">
            <?php if(isset($datas->nisn)) echo $datas->nisn ?>
        </td>
    </tr>
    <tr>
        <td width="250px">
            k. Alamat Tempat Tinggal
        </td>
        <td width="30px">
        </td>
        <td style="text-align: center;">
        </td>
    </tr>
    <tr>
        <td width="250px" style="padding-left: 20px;">
            Dusun
        </td>
        <td width="30px">
            :
        </td>
        <td style="text-align: center;">
            <?php if(isset($datas->nisn)) echo $datas->nisn ?>
        </td>
    </tr>
    <tr>
        <td width="250px" style="padding-left: 20px;">
            Kelurahan/Desa
        </td>
        <td width="30px">
            :
        </td>
        <td style="text-align: center;">
            <?php if(isset($datas->nisn)) echo $datas->nisn ?>
        </td>
    </tr>
    <tr>
        <td width="250px" style="padding-left: 20px;">
            Kecamatan
        </td>
        <td width="30px">
            :
        </td>
        <td style="text-align: center;">
            <?php if(isset($datas->nisn)) echo $datas->nisn ?>
        </td>
    </tr>
    <tr>
        <td width="250px" style="padding-left: 20px;">
            Kabupaten/Kota
        </td>
        <td width="30px">
            :
        </td>
        <td style="text-align: center;">
            <?php if(isset($datas->nisn)) echo $datas->nisn ?>
        </td>
    </tr>
    <tr>
        <td width="250px" style="padding-left: 20px;">
            Provinsi
        </td>
        <td width="30px">
            :
        </td>
        <td style="text-align: center;">
            <?php if(isset($datas->nisn)) echo $datas->nisn ?>
        </td>
    </tr>
    <tr>
        <td width="250px">
            l. Alat Transportasi ke Sekolah
        </td>
        <td width="30px">
            :
        </td>
        <td style="text-align: center;">
            <?php if(isset($datas->nisn)) echo $datas->nisn ?>
        </td>
    </tr>
    <tr>
        <td width="250px">
            m. Jenis Tinggal
        </td>
        <td width="30px">
            :
        </td>
        <td style="text-align: center;">
            <?php if(isset($datas->nisn)) echo $datas->nisn ?>
        </td>
    </tr>
    <tr>
        <td width="250px">
            n. No. Telepon/Hp
        </td>
        <td width="30px">
            :
        </td>
        <td style="text-align: center;">
            <?php if(isset($datas->nisn)) echo $datas->nisn ?>
        </td>
    </tr>
    <tr>
        <td width="250px">
            o. Email Pribadi
        </td>
        <td width="30px">
            :
        </td>
        <td style="text-align: center;">
            <?php if(isset($datas->nisn)) echo $datas->nisn ?>
        </td>
    </tr>
    <tr>
        <td width="250px">
            p. Asal Sekolah SD/MI
        </td>
        <td width="30px">
            :
        </td>
        <td style="text-align: center;">
            <?php if(isset($datas->nisn)) echo $datas->nisn ?>
        </td>
    </tr>
    <tr>
        <td width="250px">
           q. Apakah Sebagai Penerima KPS
        </td>
        <td width="30px">
            :
        </td>
        <td style="text-align: center;">
            <?php if(isset($datas->nisn)) echo $datas->nisn ?>
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
            r. Nama Ayah
        </td>
        <td width="30px">
            :
        </td>
        <td style="text-align: center;">
            <?php if(isset($datas->nama_lengkap)) echo $datas->nama_lengkap ?>
        </td>
    </tr>
    <tr>
        <td width="250px">
            - Tempat, Tanggal Lahir
        </td>
        <td width="30px">
            :
        </td>
        <td style="text-align: center;">
            <?php if(isset($datas->nama_lengkap)) echo $datas->nama_lengkap ?>
        </td>
    </tr>
    <tr>
        <td width="250px">
            - Pekerjaan
        </td>
        <td width="30px">
            :
        </td>
        <td style="text-align: center;">
            <?php if(isset($datas->nama_lengkap)) echo $datas->nama_lengkap ?>
        </td>
    </tr>
    <tr>
        <td width="250px">
            - Pendidikan
        </td>
        <td width="30px">
            :
        </td>
        <td style="text-align: center;">
            <?php if(isset($datas->nama_lengkap)) echo $datas->nama_lengkap ?>
        </td>
    </tr>
    <tr>
        <td width="250px">
            - Penghasilan Bulanan
        </td>
        <td width="30px">
            :
        </td>
        <td style="text-align: center;">
            <?php if(isset($datas->nama_lengkap)) echo $datas->nama_lengkap ?>
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
            s. Nama Ibu
        </td>
        <td width="30px">
            :
        </td>
        <td style="text-align: center;">
            <?php if(isset($datas->nama_lengkap)) echo $datas->nama_lengkap ?>
        </td>
    </tr>
    <tr>
        <td width="250px">
            - Tempat, Tanggal Lahir
        </td>
        <td width="30px">
            :
        </td>
        <td style="text-align: center;">
            <?php if(isset($datas->nama_lengkap)) echo $datas->nama_lengkap ?>
        </td>
    </tr>
    <tr>
        <td width="250px">
            - Pekerjaan
        </td>
        <td width="30px">
            :
        </td>
        <td style="text-align: center;">
            <?php if(isset($datas->nama_lengkap)) echo $datas->nama_lengkap ?>
        </td>
    </tr>
    <tr>
        <td width="250px">
            - Pendidikan
        </td>
        <td width="30px">
            :
        </td>
        <td style="text-align: center;">
            <?php if(isset($datas->nama_lengkap)) echo $datas->nama_lengkap ?>
        </td>
    </tr>
    <tr>
        <td width="250px">
            - Penghasilan Bulanan
        </td>
        <td width="30px">
            :
        </td>
        <td style="text-align: center;">
            <?php if(isset($datas->nama_lengkap)) echo $datas->nama_lengkap ?>
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
            t. Nama Wali
        </td>
        <td width="30px">
            :
        </td>
        <td style="text-align: center;">
            <?php if(isset($datas->nama_lengkap)) echo $datas->nama_lengkap ?>
        </td>
    </tr>
    <tr>
        <td width="250px">
            - Tempat, Tanggal Lahir
        </td>
        <td width="30px">
            :
        </td>
        <td style="text-align: center;">
            <?php if(isset($datas->nama_lengkap)) echo $datas->nama_lengkap ?>
        </td>
    </tr>
    <tr>
        <td width="250px">
            - Pekerjaan
        </td>
        <td width="30px">
            :
        </td>
        <td style="text-align: center;">
            <?php if(isset($datas->nama_lengkap)) echo $datas->nama_lengkap ?>
        </td>
    </tr>
    <tr>
        <td width="250px">
            - Pendidikan
        </td>
        <td width="30px">
            :
        </td>
        <td style="text-align: center;">
            <?php if(isset($datas->nama_lengkap)) echo $datas->nama_lengkap ?>
        </td>
    </tr>
    <tr>
        <td width="250px">
            - Penghasilan Bulanan
        </td>
        <td width="30px">
            :
        </td>
        <td style="text-align: center;">
            <?php if(isset($datas->nama_lengkap)) echo $datas->nama_lengkap ?>
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
    <tr>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
</table>