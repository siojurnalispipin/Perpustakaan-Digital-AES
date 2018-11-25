<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <div class="row">
        <div class="col-lg-12"><br />

            <ol class="breadcrumb">
                <li><a href="<?php echo base_url('enkripsi/text'); ?>">Enkripsi</a></li>
                <li class="active">Text</li>
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
            <div class="panel panel-success">
                <div class="panel-heading">
                    <center>
                        <h3>Enkrip Text</h3>
                    </center>
                </div>
                <div class="panel-body">
                    <form role="form" action="" method="post" name="form" id="form">
                        <input type="hidden" name="mode" value="et" />
                        <fieldset>
                            <div class="row">
                            </div>
                            <div class="row">
                                <div class="col-sm-12 col-md-10  col-md-offset-1 ">
                                    <div class="form-group">
                                        <textarea name="text" class="form-control" rows="5" style="width:100%;resize:none"></textarea>
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
                    <input type="submit" class="btn btn-success center-block" name="enkriptext" value="Enkrip Text">
                </div>
                </form>
            </div>
            <?php
            if (!empty($cipher)) {
                ?>
            <textarea name="result" class="form-control default-cursor" rows="5" style="width:100%;resize:none"
                readonly><?php echo $cipher ?></textarea>
            <?php

        }
        ?>
        </div>
    </div>





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