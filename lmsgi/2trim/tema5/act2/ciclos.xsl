<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">

      <html>
            <head>
                  <title>Ciclos</title>
            </head>
            <body>
                  <h2>Mostrar nombres</h2>
                  <xsl:for-each select="ies/ciclos/ciclo">
                        <xsl:value-of select="nombre"/><br/>
                  </xsl:for-each>
<hr/>
                  <h2>Mostrar nombres en parrafos</h2>
                  <xsl:for-each select="ies/ciclos/ciclo">
                        <p><xsl:value-of select="nombre"/></p>
                  </xsl:for-each>
<hr/>
                  <h2>Mostrar nombres en lista y grado entre parentesis</h2>
                  <xsl:for-each select="ies/ciclos/ciclo">
                        <ul>
                        <li>
                        <xsl:value-of select="nombre"/> &#40;<xsl:value-of select="grado"/>&#41;
                        </li>
                        </ul>
                  </xsl:for-each>
<hr/>
                  <h2>Mostrar en tabla con colores</h2>
                  <xsl:for-each select="ies">
                        <h1><xsl:value-of select="@nombre"/></h1>
                  </xsl:for-each>
                        <table border="1">
                        <xsl:for-each select="ies/ciclos/ciclo">
                        <tr>
                              <xsl:choose>
                                    <xsl:when test="decretoTitulo/@ano&lt;'2009'">
                                    <td><font color="green"><xsl:value-of select="nombre"/></font></td>
                                    <td><font color="green"><xsl:value-of select="decretoTitulo/@ano"/></font></td>
                                    </xsl:when>
                                    <xsl:when test="decretoTitulo/@ano='2009'">
                                    <td><font color="blue"><xsl:value-of select="nombre"/></font></td>
                                    <td><font color="blue"><xsl:value-of select="decretoTitulo/@ano"/></font></td>
                                    </xsl:when>
                                    <xsl:when test="decretoTitulo/@ano&gt;'2009'">
                                    <td><font color="red"><xsl:value-of select="nombre"/></font></td>
                                    <td><font color="red"><xsl:value-of select="decretoTitulo/@ano"/></font></td>
                                    </xsl:when>
                              </xsl:choose>
                        </tr>
                        </xsl:for-each>
                        </table>
            </body>
      </html>

  </xsl:template>
</xsl:stylesheet>
