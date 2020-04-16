<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">

        <html>
            <body>
                <table border="1">
                    <tr>
                        <td>
                            <h2>ID</h2>
                        </td>
                        <td>
                            <h3>nombre</h3>
                        </td>
                        <td>
                            <h3>nacionalidad</h3>
                        </td>
                    </tr>
                    <xsl:for-each select="catalogo/discograficas/discografica">
                        <xsl:choose>
                            <xsl:when test="nacionalidad='España'">
                                <tr>
                                    <td bgcolor="yellow">
                                        <xsl:value-of select="@id" />
                                    </td>
                                    <td bgcolor="yellow">
                                        <xsl:value-of select="nombre" />
                                    </td>
                                    <td bgcolor="yellow">
                                        <xsl:value-of select="nacionalidad" />
                                    </td>
                                </tr>
                            </xsl:when>
                            <xsl:otherwise>
                                <tr>
                                    <td>
                                        <xsl:value-of select="@id" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="nombre" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="nacionalidad" />
                                    </td>
                                </tr>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:for-each>
                </table>
            </body>
        </html>


    </xsl:template>
</xsl:stylesheet>