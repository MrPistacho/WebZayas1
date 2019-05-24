<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
  <style>

  #menu {
  border-collapse: collapse;
}

#menu td, #menu th {
  border: 1px solid #ddd;
  padding: 8px;
  width: 200px;
}

#menu tr:hover {background-color: white;}
}
</style>
  <body>
 <table id="menu">
  <tr>
    <th>     </th>
    <th>Lunes</th>
    <th>Martes</th>
    <th>Miercoles</th>
    <th>Jueves</th>
    <th>Viernes</th>
  </tr>
<xsl:for-each select="menu/semana[1]">
  <tr style="background-color:green;">


    <td >Semana <xsl:value-of select="@numero"/></td>
    <xsl:for-each select="*">
    <td colspan="4"></td>
    <td>
      <xsl:value-of select="primero"/>
      <p></p>
      <xsl:value-of select="postre"/>
    </td>

    </xsl:for-each>
  </tr>
  </xsl:for-each>
  <xsl:for-each select="menu/semana[2]">
  <tr style="background-color:yellow;">
    <td>Semana <xsl:value-of select="@numero"/></td>
    <xsl:for-each select="*">
    <td>
      <xsl:value-of select="primero"/>
      <p></p>
      <xsl:value-of select="postre"/>
    </td>
    </xsl:for-each>
  </tr>
  </xsl:for-each>
  <xsl:for-each select="menu/semana[3]">
  <tr style="background-color:green;">
    <td>Semana <xsl:value-of select="@numero"/></td>
    <xsl:for-each select="*">
    <td>
      <xsl:value-of select="primero"/>
      <p></p>
      <xsl:value-of select="postre"/>
    </td>
    </xsl:for-each>
  </tr>
  </xsl:for-each>
  <xsl:for-each select="menu/semana[4]">
  <tr style="background-color:yellow;">
    <td>Semana <xsl:value-of select="@numero"/></td>
    <xsl:for-each select="*">
    <td>
      <xsl:value-of select="primero"/>
      <p></p>
      <xsl:value-of select="postre"/>
    </td>
    </xsl:for-each>
  </tr>
  </xsl:for-each>
  <xsl:for-each select="menu/semana[5]">
  <tr style="background-color:green;">
    <td>Semana <xsl:value-of select="@numero"/></td>
    <xsl:for-each select="*">
    <td>
      <xsl:value-of select="primero"/>
      <p></p>
      <xsl:value-of select="postre"/>
    </td>
    </xsl:for-each>
  </tr>
  </xsl:for-each>
</table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet> 
