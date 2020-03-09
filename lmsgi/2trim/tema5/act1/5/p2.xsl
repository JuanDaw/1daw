<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <body>
        <h1>Video Club</h1>
        <table>
        <tr bgcolor="#3333ff">
          <th>Título</th>
          <th>Director</th>
          <th>URL</th>
        </tr>
        <xsl:for-each select="peliculas/pelicula">
        <tr>
          <td><xsl:value-of select="titulo"/></td>
          <td><xsl:value-of select="director"/></td>
          <td><xsl:value-of select="url"/></td>
        </tr>
        </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
