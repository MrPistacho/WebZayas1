<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
  <style>
  #contacto {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#contacto td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#contacto tr:hover {background-color: white;}

#contacto th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: lightblue;
  color: white;
  
}
</style>
  <body>
 <table id="contacto">
  <tr>
    <th>Nombre</th>
    <th>Apellido</th>
    <th>DNI</th>
    <th>Comida</th>
    <th>Telefono</th>
    <th>fecha</th>
    <th>Hora</th>
  </tr>
<xsl:for-each select="document/Reserva">
  <tr>
    <td><xsl:value-of select="Nombre"/></td>
    <td><xsl:value-of select="Apellido"/></td>
    <td><xsl:value-of select="DNI"/></td>
    <td><xsl:value-of select="Comida"/></td>
    <td><xsl:value-of select="Telefono"/></td>
    <td><xsl:value-of select="fecha"/></td>
    <td><xsl:value-of select="Hora"/></td>
  </tr>
  </xsl:for-each>
</table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet> 
