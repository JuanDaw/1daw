<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">

        <html>
            <body>
                <h3>CD’s precio inferior a 12€</h3>
                <ol>
                    <xsl:for-each select="catalogo/cds/cd">
                        <xsl:if test="precio&lt;'12'">
                            <li>
                                <xsl:value-of select="titulo" />
                            </li>
                        </xsl:if>
                    </xsl:for-each>
                </ol>
            </body>
        </html>


    </xsl:template>
</xsl:stylesheet>