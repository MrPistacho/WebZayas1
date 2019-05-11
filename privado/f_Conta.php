<?php
error_reporting(0);
ini_set('display_errors', 0);

if (isset($_REQUEST['ok'])) {
    $xml = new DOMDocument("1.0","UTF-8");
    $xml->load("contacto.xml");
    $rootTag = $xml->getElementsByTagName("document")->item(0);
 
    $ContactoTag = $xml->createElement("Contacto");
   
    

    
    $mTag = $xml->createElement("Genero",$_REQUEST['radio'] ?? " ");
    $aTag = $xml->createElement("Nombre",$_REQUEST['Nombre']);
    $bTag = $xml->createElement("Apellido",$_REQUEST['Apellido']);
    $cTag = $xml->createElement("Direccion",$_REQUEST['Direccion']);
    $dTag = $xml->createElement("Direccion2",$_REQUEST['Direccion2']);
    $fTag = $xml->createElement("Ciudad",$_REQUEST['Ciudad']);
    $gTag = $xml->createElement("Provincia",$_REQUEST['Provincia']);
    $hTag = $xml->createElement("Postal",$_REQUEST['Postal']);
    $iTag = $xml->createElement("Pais",$_REQUEST['Pais'] ?? " ");
    $jTag = $xml->createElement("Telefono",$_REQUEST['Telefono']);
    $kTag = $xml->createElement("email",$_REQUEST['email']);
    $lTag = $xml->createElement("Comentario",$_REQUEST['Comentario']);
        
    $ContactoTag->appendChild($mTag);
    $ContactoTag->appendChild($aTag);
    $ContactoTag->appendChild($bTag);
    $ContactoTag->appendChild($cTag);
    $ContactoTag->appendChild($dTag);
    $ContactoTag->appendChild($fTag);
    $ContactoTag->appendChild($gTag);
    $ContactoTag->appendChild($hTag);
    $ContactoTag->appendChild($iTag);
    $ContactoTag->appendChild($jTag);
    $ContactoTag->appendChild($kTag);
    $ContactoTag->appendChild($lTag);
    $ContactoTag->appendChild($lTag);
    
    $rootTag->appendChild($ContactoTag);
    $xml->save("contacto.xml");
}

echo "<style>";
echo "h1 {
    text-align: left;
    size='24px';
    color: green;
    margin-left: 30%;   
}";
echo "</style>";
echo "<h1>Gracias por tu tiempo</h1>";
?>