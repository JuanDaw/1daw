<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <body>
        <h1>Video Club</h1>
        <table>
        <tr bgcolor="#3333ff">
          <th>Título</th>
          <th>Nacionalidad</th>
          <th>Productor</th>
          <th>Director</th>
          <th>Año</th>
          <th>Duracion</th>
          <th>Genero</th>
          <th>Sipnosis</th>
          <th>URL</th>
        </tr>
        <xsl:for-each select="peliculas/pelicula">
        <tr>
          <td><xsl:value-of select="titulo"/></td>
          <td><xsl:value-of select="nacionalidad"/></td>
          <td><xsl:value-of select="productor"/></td>
          <td><xsl:value-of select="director"/></td>
          <td><xsl:value-of select="año"/></td>
          <td><xsl:value-of select="duracion"/></td>
          <td><xsl:value-of select="genero"/></td>
          <td><xsl:value-of select="sipnosis"/></td>
          <td><xsl:value-of select="url"/></td>
        </tr>
        </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
