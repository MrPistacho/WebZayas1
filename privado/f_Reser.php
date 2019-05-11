<?php
if (isset($_REQUEST['ok'])) {
    $xml = new DOMDocument("1.0","UTF-8");
    $xml->load("reserva.xml");
 
    $rootTag = $xml->getElementsByTagName("document")->item(0);
 
    $ReservaTag = $xml->createElement("Reserva");
    
    $aTag = $xml->createElement("Nombre",$_REQUEST['Nombre']);
    $bTag = $xml->createElement("Apellido",$_REQUEST['Apellido']);
    $cTag = $xml->createElement("DNI",$_REQUEST['NIE']);
    $dTag = $xml->createElement("Comida",$_REQUEST['check'] ?? " ");
    $jTag = $xml->createElement("Telefono",$_REQUEST['Telefono']);
    $kTag = $xml->createElement("fecha",$_REQUEST['fecha']);
    $lTag = $xml->createElement("Hora",$_REQUEST['hora']);
    $mTag = $xml->createElement("Minutos",$_REQUEST['minutos']);
    
    $ReservaTag->appendChild($aTag);
    $ReservaTag->appendChild($bTag);
    $ReservaTag->appendChild($cTag);
    $ReservaTag->appendChild($dTag);
    $ReservaTag->appendChild($jTag);
    $ReservaTag->appendChild($kTag);
    $ReservaTag->appendChild($lTag);
    $ReservaTag->appendChild($mTag);
 
    $rootTag->appendChild($ReservaTag);
 
    $xml->save("reserva.xml");
    
}
echo "<style>";
echo "h1 {
    text-align: top;
    size='24px';
    color: green;
    margin-left: 40%;   
}";
echo "</style>";
echo "<h1>Gracias por tu tiempo</h1>";
?>

