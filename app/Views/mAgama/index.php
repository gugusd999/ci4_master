<?= $this->extend('template/admin') ?>


<?= $this->section('content') ?>

<div class="container">
    <div class="row">
        <div class="col-sm-4">
            <?php if(isset($edit)) : ?>
                <form action="/m-agama" method="post">
                        <div class="form-group">
                            <label for="">Kode</label>
                            <input type="number" readonly class="form-control" name="edit[kode]" value="<?= $edit->kode; ?>">
                        </div>
                        <div class="form-group">
                            <label for="">Nama</label>
                            <input type="text" required class="form-control" name="edit[nama]" value="<?= $edit->nama; ?>">
                        </div>
                        <input type="submit" class="btn btn-primary" id="" value="update">
                </form>
            <?php else : ?>
                <form action="" method="post">
                        <div class="form-group">
                            <label for="">Kode</label>
                            <input type="number" required class="form-control" name="data[kode]">
                        </div>
                        <div class="form-group">
                            <label for="">Nama</label>
                            <input type="text" required class="form-control" name="data[nama]">
                        </div>
                        <input type="submit" class="btn btn-primary" id="">
                </form>     
            <?php endif; ?>
        </div>
        <div class="col-sm-8">
            <div class="card">
                <div class="card-body">
                    <div>
                        <input type="search" class="form-control" placeholder="pencarian...">
                    </div>

                    <table class="table table-bordered">
                        <thead>
                            <th>Kode</th>
                            <th>Nama</th>
                            <th>Acyion</th>
                        </thead>
                        <tbody>
                            <?php foreach($agama as $agama) : ?>
                            <tr>
                                <td><?= $agama->kode ?></td>
                                <td><?= $agama->nama ?></td>
                                <td>
                                    <a href="<?= site_url() ?>/edit/<?= $agama->kode ?>" type="button" class="btn btn-default">edit</a>
                                    <a href="<?= site_url() ?>/hapus/<?= $agama->kode ?>" type="button" class="btn btn-default">hapus</a>
                                </td>
                            </tr>
                            <?php endforeach; ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>


<?= $this->endSection() ?>