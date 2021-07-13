<!DOCTYPE html>

<html>

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title> LOGIN APLIKASI JUAL BELI ONLINE| RULANR STORE INDONESIA</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.5 -->
  <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="bootstrap/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
</head>

<body class="hold-transition login-page">
  <div class="login-box">
    <div class="login-logo">
      <img src="dist/img/logologin.png" class="img-thumbnail" alt="" style="height:150px;width:400px">
    </div><!-- /.login-logo -->
    <div class="login-box-body">
      <p class="login-box-msg">Login Aplikasi</p>
      <form action="page/cek_login.php" method="post">
        <div class="form-group has-feedback">
          <input type="text" name="username" class="form-control" placeholder="Username" required>
          <span class="fa fa-user form-control-feedback"></span>
        </div>
        <div class="form-group has-feedback">
          <input type="password" name="pass" class="form-control" placeholder="Password" required>
          <span class="glyphicon glyphicon-lock form-control-feedback"></span>
        </div>
        <div class="row">
          <div class="col-xs-8">

          </div><!-- /.col -->
          <div class="col-xs-4">
            <button type="submit" class="btn btn-success btn-block btn-flat">Login</button>
          </div><!-- /.col -->
          <?php
          include "config/koneksi.php"
          ?>
        </div>
      </form>

      <div class="social-auth-links text-center mt-2 mb-3">
        <a href="register.php" class="btn btn-block btn-primary">
          <i class="fa fa-sign-in mr-2"></i> Daftar Sekarang
        </a>
        <!-- <a href="admin.php" class="btn btn-block btn-danger">
          <i class="fa fa-lock mr-2"></i> Login Admin
        </a> -->
      </div>

    </div><!-- /.login-box-body -->
  </div><!-- /.login-box -->

  <!-- jQuery 2.1.4 -->
  <script src="plugins/jQuery/jQuery-2.1.4.min.js"></script>
  <!-- Bootstrap 3.3.5 -->
  <script src="bootstrap/js/bootstrap.min.js"></script>
  <!-- iCheck -->
  <script src="plugins/iCheck/icheck.min.js"></script>
  <script>
    $(function() {
      $('input').iCheck({
        checkboxClass: 'icheckbox_square-blue',
        radioClass: 'iradio_square-blue',
        increaseArea: '20%' // optional
      });
    });
  </script>
</body>

</html>