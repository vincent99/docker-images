<?php
  $file = "pageok";
  if ( $_POST['break'] ) {
    unlink($file);
    header('Location: /');
    exit();
  } else if ( $_POST['fix'] ) {
    touch($file);
    header('Location: /');
    exit();
  }
?>

<html>
  <body style="text-align: center;">
  <h1><?php echo gethostname(); ?></h1>
  <?php if ( file_exists($file) ) { ?>
    <h2>pageok</h2>
    <form method="post">
      <input type="hidden" name="break" value="1">
      <button type="submit">Break the Internet</button>
    </form>
  <?php } else { ?>
    <h2 style="color: red;">FAIL</h2>
    <form method="post">
      <input type="hidden" name="fix" value="1">
      <button type="submit">Fix the Internet</button>
    </form>
  <?php } ?>
</html>
