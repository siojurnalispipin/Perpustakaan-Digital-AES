<div class="row">
    <div class="col-lg-12"><br />

        <ol class="breadcrumb">
            <li><a href="<?php echo base_url('dekripsi'); ?>">Dekripsi</a></li>
            <li class="active">File</li>
        </ol>

        <?php

        if (!empty($message)) {
            echo $message;
        }
        ?>

    </div>
    <!-- /.col-lg-12 -->
</div>

<div class="row">
    <div class="col-sm-8 col-md-6 col-md-offset-2">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <center>
                    <h3>Dekrip File</h3>
                </center>
            </div>
            <div class="panel-body">
                <form role="form" action="" enctype="multipart/form-data" method="post" name="form" id="form">
                    <input type="hidden" name="mode" value="e" />
                    <fieldset>
                        <div class="row">
                        </div>
                        <div class="row">
                            <div class="col-sm-12 col-md-10  col-md-offset-1 ">
                                <div class="form-group">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="glyphicon glyphicon-file"></i>
                                        </span>
                                        <input class="required form-control" type="file" id="file" name="file">
                                    </div>
                                    <label class="warning">Max Size: 3MB</label>
                                </div>
                                <div class="form-group">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="glyphicon glyphicon-lock"></i>
                                        </span>
                                        <input class="required form-control" placeholder="Password" id="pass" name="pass"
                                            type="password" value="">
                                    </div>
                                </div>

                                <div id="errors"></div>
                            </div>
                        </div>
                    </fieldset>
            </div>
            <div class="panel-footer ">
                <input type="submit" name="dekripfile" class="btn btn-primary center-block" name="enkrip" value="Dekrip File">
            </div>
            </form>
        </div>
        <?php if (!empty($alert)){ ?>
        <div class='alert alert-danger alert-error'>
            <a href='#' class='close' data-dismiss='alert'>&times;</a>
            <center>
                <?php echo $alert; ?>
            </center>
        </div>
        <?php } elseif (!empty($success)) { ?>
        <div class='alert alert-success'>
            <a href='#' class='close' data-dismiss='alert'>&times;</a>
            <center>
                <?php echo $success; ?>
            </center>
        </div>
        <?php }	?>
    </div>
</div>
</div>
</div><!-- /.box-body -->



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