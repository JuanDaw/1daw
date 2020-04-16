<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
      <xsl:template match="/">

            <html>
                  <head></head>
                  <body>
                        <table border="1">
                              <tr>
                                    <td colspan="4" align="center">
                                          <h1>Agenda Personal</h1>
                                    </td>
                              </tr>
                              <xsl:for-each select="personas/persona">
                                    <tr>
                                          <td>
                                                <xsl:value-of select="apellidos" />
                                                ,
                                                <xsl:value-of select="nombre" />
                                          </td>
                                          <td>
                                                <xsl:value-of select="@relacion" />
                                          </td>
                                          <td>
                                                <xsl:value-of select="nacimiento/@dia" />
                                                <xsl:text>&#10;</xsl:text>
                                                de
                                                <xsl:text>&#10;</xsl:text>
                                                <xsl:value-of select="nacimiento/@mes" />
                                                <xsl:text>&#10;</xsl:text>
                                                de
                                                <xsl:text>&#10;</xsl:text>
                                                <xsl:value-of select="nacimiento/@anio" />
                                          </td>
                                          <td>
                                                <xsl:apply-templates select="direcciones" />
                                          </td>
                                    </tr>
                              </xsl:for-each>
                        </table>
                  </body>
            </html>

      </xsl:template>

      <xsl:template match="direcciones" name="direcciones">
            <xsl:for-each select="direccion">
                  <ul>
                        <li>
                              (
                              <xsl:value-of select="@tipo" />
                              )
                              <xsl:text>&#10;</xsl:text>
                              <xsl:value-of select="calle" />
                              .
                              <xsl:text>&#10;</xsl:text>
                              <xsl:value-of select="cpostal" />
                              .
                              <xsl:text>&#10;</xsl:text>
                              <xsl:value-of select="poblacion" />
                              .
                              <xsl:text>&#10;</xsl:text>
                              <xsl:value-of select="provincia" />
                              .
                              <xsl:text>&#10;</xsl:text>
                        </li>
                  </ul>
            </xsl:for-each>
      </xsl:template>
</xsl:stylesheet>