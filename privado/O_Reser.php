<?php
error_reporting(0);
ini_set('display_errors', 0);

$q=$_GET["q"];

$xmlDoc = new DOMDocument();
$xmlDoc->load("reserva.xml");

$x=$xmlDoc->getElementsByTagName('Nombre');

for ($i=0; $i<=$x->length-1; $i++) {
  //Process only element nodes
  if ($x->item($i)->nodeType==1) {
    if ($x->item($i)->childNodes->item(0)->nodeValue == $q) {
      $y=($x->item($i)->parentNode);
    }
  }
}
echo "<style>";
echo "tr:hover {background-color: #f5f5f5;}";
echo "td {
  padding: 10px;
  text-align: left;
  border-bottom: 1px solid #ddd;
}";
echo "</style>";
$Reserva=($y->childNodes);
echo "<table style='padding:2px;margin-top:15px'>";
for ($i=0;$i<$Reserva->length;$i++) { 
  if ($Reserva->item($i)->nodeType==1) {
    echo "<tr>";
    echo "<td>" , "<b>" , $Reserva->item($i)->nodeName , ": " , "<b>" , "</td>";
    echo "<td>" , $Reserva->item($i)->childNodes->item(0)->nodeValue , "</td>";
    echo "</tr>";
  }
}
echo "</table>";
?>