<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">

        <html>
            <body>
                <h3>Artistas españoles</h3>
                <ol>
                    <xsl:for-each select="catalogo/artistas/artista">
                        <xsl:if test="nacionalidad='España'">
                            <li>
                                <xsl:value-of select="nombre" />
                            </li>
                        </xsl:if>
                    </xsl:for-each>
                </ol>
            </body>
        </html>

    </xsl:template>
</xsl:stylesheet>