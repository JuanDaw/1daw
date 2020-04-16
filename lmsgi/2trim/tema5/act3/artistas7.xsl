<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">

        <html>
            <body>
                <table border="1">
                    <tr>
                        <td>
                            <h2>TITULO</h2>
                        </td>
                        <td>
                            <h3>autor</h3>
                        </td>
                    </tr>
                    <xsl:for-each select="catalogo/cds/cd">
                        <xsl:choose>
                            <xsl:when test="ano&gt;'2000'">
                                <tr>
                                    <td>
                                        <font color="green">
                                            <xsl:value-of select="titulo" />
                                        </font>
                                    </td>
                                    <td>
                                        <xsl:value-of select="@autor" />
                                    </td>
                                </tr>
                            </xsl:when>
                            <xsl:when test="ano&lt;'2000'">
                                <tr>
                                    <td>
                                        <font color="red">
                                            <xsl:value-of select="titulo" />
                                        </font>
                                    </td>
                                    <td>
                                        <xsl:value-of select="@autor" />
                                    </td>
                                </tr>
                            </xsl:when>
                            <xsl:otherwise>
                                <td>
                                    <xsl:value-of select="titulo" />
                                </td>
                                <td>
                                    <xsl:value-of select="@autor" />
                                </td>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:for-each>
                </table>
            </body>
        </html>


    </xsl:template>
</xsl:stylesheet>