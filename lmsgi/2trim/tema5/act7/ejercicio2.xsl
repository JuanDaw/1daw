<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Alumnos</title>
            </head>
            <body>
                <h1 align="center">Notas alumnos convocatoria Junio</h1>
                <table align="center" border="2">
                    <tr bgcolor="#6E6E6E">
                        <th>Nombre</th>
                        <th>Apellidos</th>
                        <th>Tareas</th>
                    </tr>
                    <xsl:for-each select="alumnos/alumno">
                        <tr>
                            <xsl:choose>
                                <xsl:when test="notatareas &lt; 5.0">
                                    <td bgcolor="#FF0000">
                                        <xsl:value-of select="nombre" />
                                    </td>
                                    <td bgcolor="#FF0000">
                                        <xsl:value-of select="apellidos" />
                                    </td>
                                    <td bgcolor="#FF0000">
                                        <xsl:value-of select="notatareas" />
                                    </td>
                                </xsl:when>
                            </xsl:choose>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>