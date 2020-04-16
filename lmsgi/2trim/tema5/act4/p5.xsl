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
                                          <h3>Director</h3>
                                    </td>
                                    <td>
                                          <h3>Año</h3>
                                    </td>
                              </tr>
                              <xsl:for-each select="peliculas/pelicula">
                                    <xsl:choose>
                                          <xsl:when test="Director='Christopher Nolan'">
                                                <tr>
                                                      <td bgcolor="red">
                                                            <xsl:value-of select="Titulo" />
                                                      </td>
                                                      <td bgcolor="red">
                                                            <xsl:value-of select="Director" />
                                                      </td>
                                                      <td bgcolor="red">
                                                            <xsl:value-of select="Ano" />
                                                      </td>
                                                </tr>
                                          </xsl:when>
                                          <xsl:when test="Director='Todd Phillips'">
                                                <tr>
                                                      <td bgcolor="blue">
                                                            <xsl:value-of select="Titulo" />
                                                      </td>
                                                      <td bgcolor="blue">
                                                            <xsl:value-of select="Director" />
                                                      </td>
                                                      <td bgcolor="blue">
                                                            <xsl:value-of select="Ano" />
                                                      </td>
                                                </tr>
                                          </xsl:when>
                                          <xsl:when test="Director='Bong Joon-ho'">
                                                <tr>
                                                      <td bgcolor="green">
                                                            <xsl:value-of select="Titulo" />
                                                      </td>
                                                      <td bgcolor="green">
                                                            <xsl:value-of select="Director" />
                                                      </td>
                                                      <td bgcolor="green">
                                                            <xsl:value-of select="Ano" />
                                                      </td>
                                                </tr>
                                          </xsl:when>
                                          <xsl:when test="Director='Francis Ford Coppola'">
                                                <tr>
                                                      <td bgcolor="yellow">
                                                            <xsl:value-of select="Titulo" />
                                                      </td>
                                                      <td bgcolor="yellow">
                                                            <xsl:value-of select="Director" />
                                                      </td>
                                                      <td bgcolor="yellow">
                                                            <xsl:value-of select="Ano" />
                                                      </td>
                                                </tr>
                                          </xsl:when>
                                          <xsl:when test="Director='David Fincher'">
                                                <tr>
                                                      <td bgcolor="gray">
                                                            <xsl:value-of select="Titulo" />
                                                      </td>
                                                      <td bgcolor="gray">
                                                            <xsl:value-of select="Director" />
                                                      </td>
                                                      <td bgcolor="gray">
                                                            <xsl:value-of select="Ano" />
                                                      </td>
                                                </tr>
                                          </xsl:when>
                                          <xsl:when test="Director='Peter Farrelly'">
                                                <tr>
                                                      <td bgcolor="brown">
                                                            <xsl:value-of select="Titulo" />
                                                      </td>
                                                      <td bgcolor="brown">
                                                            <xsl:value-of select="Director" />
                                                      </td>
                                                      <td bgcolor="brown">
                                                            <xsl:value-of select="Ano" />
                                                      </td>
                                                </tr>
                                          </xsl:when>
                                          <xsl:when test="Director='Robert Zemeckis'">
                                                <tr>
                                                      <td bgcolor="violet">
                                                            <xsl:value-of select="Titulo" />
                                                      </td>
                                                      <td bgcolor="violet">
                                                            <xsl:value-of select="Director" />
                                                      </td>
                                                      <td bgcolor="violet">
                                                            <xsl:value-of select="Ano" />
                                                      </td>
                                                </tr>
                                          </xsl:when>
                                    </xsl:choose>
                              </xsl:for-each>
                        </table>
                  </body>
            </html>

      </xsl:template>
</xsl:stylesheet>