<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Biblioteca</title>
            </head>
            <body>
                <table align="center" border="1">
                    <tr bgcolor="gray">
                        <th>Titulo</th>
                        <th>Autor</th>
                    </tr>
                    <xsl:for-each select="biblioteca/libro">
                        <tr>
                            <xsl:choose>
                                <xsl:when test="titulo/@idioma = 'es'">
                                    <td bgcolor="#F7FE2E">
                                        <xsl:value-of select="titulo" />
                                    </td>
                                    <td bgcolor="#F7FE2E">
                                        <xsl:value-of select="autor" />
                                    </td>
                                </xsl:when>
                                <xsl:otherwise>
                                    <td>
                                        <xsl:value-of select="titulo" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="autor" />
                                    </td>
                                </xsl:otherwise>
                            </xsl:choose>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>