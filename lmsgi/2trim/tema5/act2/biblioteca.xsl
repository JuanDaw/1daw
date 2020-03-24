<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">

<html>
      <head>
            <title>Biblioteca</title>
      </head>
      <body>
            <h2>Tabla 1</h2>
            <table border="1">
            <xsl:for-each select="bib/libro">
            <xsl:sort select="titulo"/>
                  <tr>
                        <xsl:choose>
                              <xsl:when test="precio &gt; 100.00">
                                    <td><font color="red"><xsl:value-of select="titulo" /> &#40;Caro&#41;</font></td>
                                    <td>
                                          <xsl:for-each select="autor">
                                                <xsl:value-of select="nombre" />
                                                <xsl:value-of select="apellido" />
                                                <br/>
                                          </xsl:for-each>
                                    </td>
                                    <td><xsl:value-of select="editorial" /></td>
                              </xsl:when>
                              <xsl:otherwise>
                                    <td><xsl:value-of select="titulo" /></td>
                                    <td>
                                          <xsl:for-each select="autor">
                                                <xsl:value-of select="nombre" />
                                                <xsl:value-of select="apellido" />
                                                <br/>
                                          </xsl:for-each>
                                    </td>
                                    <td><xsl:value-of select="editorial" /></td>
                              </xsl:otherwise>
                        </xsl:choose>
                  </tr>
            </xsl:for-each>
            </table>
      <hr/>
            <h2>Tabla 2</h2>
            <table border="1">
                  <xsl:for-each select="bib/libro">
                  <xsl:sort select="precio"/>
                        <tr>
                              <td><xsl:value-of select="precio" /></td>
                              <xsl:choose>
                                    <xsl:when test="precio &gt; 100.00">
                                          <td bgcolor="red"><xsl:value-of select="titulo" /></td>
                                    </xsl:when>
                                    <xsl:otherwise>
                                          <td><xsl:value-of select="titulo" /></td>
                                    </xsl:otherwise>
                              </xsl:choose>
                              <td><em><xsl:value-of select="@año" /></em></td>           
                        </tr>
                  </xsl:for-each>
            </table>
      <hr/>
            <h2>Lista de autores</h2>
            <xsl:for-each select="bib/libro/autor">
            <xsl:sort select="apellido" />
                  <ol>
                        <li><xsl:value-of select="nombre" />
                            <xsl:value-of select="apellido" /></li>
                  </ol>
            </xsl:for-each>
      <hr/>
            <h2>Lista de autores menores de 100</h2>
            <xsl:for-each select="bib/libro">
                  <xsl:if test="precio&lt;100.00">
                        <ol>
                              <li><xsl:value-of select="titulo" /></li>
                        </ol>
                  </xsl:if>
            </xsl:for-each>
      </body>
</html>

  </xsl:template>
</xsl:stylesheet>
