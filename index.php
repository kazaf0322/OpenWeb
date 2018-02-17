<?php
error_reporting(0);

if ($_GET['run']) {
  exec("open Terminal");
  exec("open mount.command");
}

if ($_GET['run2']) {
  exec("open Terminal");
  exec("open icloud.command");
}

if ($_GET['run3']) {
  exec("open Terminal");
  exec("open jailbreak.command");
}

if ($_GET['run4']) {
  exec("open Terminal");
  exec("open rw.command");
}

if ($_GET['run5']) {
  exec("open Terminal");
  exec("open kill.command");
}
?>
<h1>OpenWeb</h1>
<a href="?run=true">Mount.sh</a>
<br></br>
<a href="?run2=true">Bypass iCloud</a>
<br></br>
<a href="?run3=true">Install Cydia</a>
<br></br>
<a href="?run4=true">Get R/W</a>
<br></br>
<a href="?run5=true">Reboot</a>