<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
  <body>
 <table>
  <tr>
    <th>Genero</th>
    <th>Nombre</th>
    <th>Apellido</th>
    <th>Direccion</th>
    <th>Direccion2</th>
    <th>Ciudad</th>
    <th>Provincia</th>
    <th>Postal</th>
    <th>Pais</th>
    <th>Telefono</th>
    <th>email</th>
    <th>Comentario</th>
  </tr>
<xsl:for-each select="document/Contacto">
  <tr>
    <td><xsl:value-of select="Genero"/></td>
    <td><xsl:value-of select="Nombre"/></td>
    <td><xsl:value-of select="Apellido"/></td>
    <td><xsl:value-of select="Direccion"/></td>
    <td><xsl:value-of select="Direccion2"/></td>
    <td><xsl:value-of select="Ciudad"/></td>
    <td><xsl:value-of select="Provincia"/></td>
    <td><xsl:value-of select="Postal"/></td>
    <td><xsl:value-of select="Pais"/></td>
    <td><xsl:value-of select="Telefono"/></td>
    <td><xsl:value-of select="email"/></td>
    <td><xsl:value-of select="Comentario"/></td>
  </tr>
  </xsl:for-each>
</table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet> 
