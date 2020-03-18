<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
    <html>
        <body>
            <h1>Biblioteca</h1>
            <table>
                <tr>
                    <th>Ciclo</th>
                </tr>
                <xsl:for-each select="ies/ciclos">
                <tr>
                    <td><xsl:value-of select="ciclo"/></td>
                </tr>
                </xsl:for-each>
            </table>
        </body>
    </html>
    </xsl:template>
</xsl:stylesheet>