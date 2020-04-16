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
                        <th>Idioma</th>
                        <th>Autor</th>
                        <th>Fecha Publicación</th>
                    </tr>
                    <xsl:for-each select="biblioteca/libro[autor='Mario Vargas Llosa']">
                        <xsl:sort select="titulo" />
                        <tr>
                            <td>
                                <xsl:value-of select="titulo" />
                            </td>
                            <td>
                                <xsl:value-of select="titulo/@idioma" />
                            </td>
                            <td>
                                <xsl:value-of select="autor" />
                            </td>
                            <td>
                                <xsl:value-of select="fechaPublicacion/@año" />
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>