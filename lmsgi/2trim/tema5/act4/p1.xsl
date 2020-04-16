<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
      <xsl:template match="/">

            <html>
                  <head></head>
                  <body>
                        <table border="1">
                              <tr>
                                    <td>
                                          <h3>Titulo</h3>
                                    </td>
                                    <td>
                                          <h3>Nacionalidad</h3>
                                    </td>
                                    <td>
                                          <h3>Productor</h3>
                                    </td>
                                    <td>
                                          <h3>Director</h3>
                                    </td>
                                    <td>
                                          <h3>Año</h3>
                                    </td>
                                    <td>
                                          <h3>Duracion</h3>
                                    </td>
                                    <td>
                                          <h3>Genero</h3>
                                    </td>
                                    <td>
                                          <h3>Sipnosis</h3>
                                    </td>
                              </tr>
                              <xsl:for-each select="peliculas/pelicula">
                                    <tr>
                                          <td>
                                                <xsl:value-of select="Titulo" />
                                          </td>
                                          <td>
                                                <xsl:value-of select="Nacionalidad" />
                                          </td>
                                          <td>
                                                <xsl:value-of select="Productor" />
                                          </td>
                                          <td>
                                                <xsl:value-of select="Director" />
                                          </td>
                                          <td>
                                                <xsl:value-of select="Ano" />
                                          </td>
                                          <td>
                                                <xsl:value-of select="Duracion" />
                                          </td>
                                          <td>
                                                <xsl:value-of select="Genero" />
                                          </td>
                                          <td>
                                                <xsl:value-of select="Sipnosis" />
                                          </td>
                                    </tr>
                              </xsl:for-each>
                        </table>
                  </body>
            </html>

      </xsl:template>
</xsl:stylesheet>