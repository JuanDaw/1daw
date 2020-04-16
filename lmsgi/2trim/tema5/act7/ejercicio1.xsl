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
                        <th>Cuestionarios</th>
                        <th>Examen</th>
                    </tr>
                    <xsl:for-each select="alumnos/alumno">
                        <xsl:sort select="apellidos" />
                        <tr>
                            <xsl:choose>
                                <xsl:when test="notaexamen &gt; 5.0">
                                    <td bgcolor="#0000FF">
                                        <xsl:value-of select="nombre" />
                                    </td>
                                    <td bgcolor="#0000FF">
                                        <xsl:value-of select="apellidos" />
                                    </td>
                                    <td bgcolor="#0000FF">
                                        <xsl:value-of select="notatareas" />
                                    </td>
                                    <td bgcolor="#0000FF">
                                        <xsl:value-of select="notacuestionarios" />
                                    </td>
                                    <td bgcolor="#0000FF">
                                        <xsl:value-of select="notaexamen" />
                                    </td>
                                </xsl:when>
                                <xsl:otherwise>
                                    <td>
                                        <xsl:value-of select="nombre" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="apellidos" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="notatareas" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="notacuestionarios" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="notaexamen" />
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