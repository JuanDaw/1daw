<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
      <xsl:template match="/">

            <html>
                  <head></head>
                  <body>
                        <xsl:for-each select="peliculas/pelicula">
                              <xsl:value-of select="Titulo" />
                              <xsl:text>&#10;</xsl:text>
                              <xsl:value-of select="Director" />
                              <xsl:text>&#10;</xsl:text>
                              <a href="{@url}">
                                    <img height="100">
                                          <xsl:attribute name="src">
                                                <xsl:value-of select="Foto" />
                                          </xsl:attribute>
                                    </img>
                              </a>
                              <br />
                        </xsl:for-each>
                  </body>
            </html>

      </xsl:template>
</xsl:stylesheet>