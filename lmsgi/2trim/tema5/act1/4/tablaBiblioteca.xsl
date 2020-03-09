<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
  <html>
    <body>
      <h1>Mi biblioteca personal</h1>
      <table>
        <tr bgcolor="#ff9933">
          <th>ISBN</th>
          <th>Título</th>
          <th>Autor</th>
          <th>Precio</th>
        </tr>
        <xsl:for-each select="libreria/libro">
          <tr>
            <xsl:choose>
              <xsl:when test="precio&gt;25">
                <td bgcolor="ccf0000"><xsl:value-of select="isbn"/></td>
                <td bgcolor="#cc0000"><xsl:value-of select="titulo"/></td>
                <td bgcolor="#cc0000"><xsl:value-of select="autor"/></td>
                <td bgcolor="#cc0000"><xsl:value-of select="precio"/></td>
              </xsl:when>
              <xsl:otherwise>
                <td bgcolor="#009900"><xsl:value-of select="isbn"/></td>
                <td bgcolor="#009900"><xsl:value-of select="titulo"/></td>
                <td bgcolor="#009900"><xsl:value-of select="autor"/></td>
                <td bgcolor="#009900"><xsl:value-of select="precio"/></td>
              </xsl:otherwise>
            </xsl:choose>
          </tr>
        </xsl:for-each>
      </table>
    </body>
  </html>
  </xsl:template>
</xsl:stylesheet>
