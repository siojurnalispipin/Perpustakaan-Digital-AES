<div class="row">
    <div class="col-lg-12"><br />

        <ol class="breadcrumb">
            <li><a href="<?php echo base_url('myfiles'); ?>">Enkripsi</a></li>
            <li class="active">List Decripted File</li>
        </ol>

        <?php

        if (!empty($message)) {
            echo $message;
        }
        ?>

    </div>
    <!-- /.col-lg-12 -->
</div>

<div class="box">
    <div class="box-header with-border">
    </div>
    <div class="box-body">
        <div class="myfiles">
            <!-- <center><h1>My Files</h1></center> -->
            <table class="table table-striped table-bordered">
                <tr>
                    <th>No.</th>
                    <th>ID</th>
                    <th>Nama File</th>
                    <th>Tanggal Upload</th>
                    <th>Encrypt File</th>
                </tr>
                <?php
                $no = 1;
                foreach ($files as $value) {
                    ?>
                <tr>
                    <td>
                        <?php echo $no ?>
                    </td>
                    <td>
                        <?php echo $value['dokumen_id'] ?>
                    </td>
                    <td>
                        <?php echo $value['nama_dokumen'] ?>
                    </td>
                    <td>
                        <?php echo $value['tanggal'] ?>
                    </td>
                    <td><a href="<?php echo base_url() . "myfiles/download/" . $value['id']; ?>">Download </a> </td> </tr>
                            <?php $no++;
                        } ?>
            </table>
        </div>
    </div><!-- /.box-body -->
    <div class="box-footer" style="height:50px;">
    </div><!-- /.box-footer-->
</div><!-- /.box -->


<!-- jQuery -->
<script src="<?php echo base_url(); ?>template/backend/sbadmin/vendor/jquery/jquery.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="<?php echo base_url(); ?>template/backend/sbadmin/vendor/bootstrap/js/bootstrap.min.js"></script>

<!-- Metis Menu Plugin JavaScript -->
<script src="<?php echo base_url(); ?>template/backend/sbadmin/vendor/metisMenu/metisMenu.min.js"></script>

<!-- DataTables JavaScript -->
<script src="<?php echo base_url(); ?>template/backend/sbadmin/vendor/datatables/js/jquery.dataTables.min.js"></script>
<script src="<?php echo base_url(); ?>template/backend/sbadmin/vendor/datatables-plugins/dataTables.bootstrap.min.js"></script>
<script src="<?php echo base_url(); ?>template/backend/sbadmin/vendor/datatables-responsive/dataTables.responsive.js"></script>

<!-- Custom Theme JavaScript -->
<script src="<?php echo base_url(); ?>template/backend/sbadmin/dist/js/sb-admin-2.js"></script>

<!-- Page-Level Demo Scripts - Tables - Use for reference -->
<script>
    $(document).ready(function () {
        $('#dataTables-example').DataTable({
            responsive: true
        });
    });
</script>