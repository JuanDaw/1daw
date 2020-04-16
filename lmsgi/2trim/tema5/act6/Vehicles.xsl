<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <style>
                    h1 {
                        letter-spacing: 0.5em;
                    }
                </style>
                <title>Used Vehicles</title>
            </head>
            <body>
                <h1 style="background-color: #446600; text-align: center">
                    <font color="white">Used Vehicles</font>
                </h1>
                <table border="1" align="center">
                    <tr>
                        <th>Year</th>
                        <th>Make</th>
                        <th>Model</th>
                        <th>Mileage</th>
                        <th>Color</th>
                        <th>Price</th>
                    </tr>
                    <xsl:for-each select="vehicles/vehicle">
                        <tr>
                            <td>
                                <xsl:value-of select="@year" />
                            </td>
                            <td>
                                <xsl:value-of select="@make" />
                            </td>
                            <td>
                                <xsl:value-of select="@model" />
                            </td>
                            <td>
                                <xsl:value-of select="mileage" />
                            </td>
                            <td>
                                <xsl:value-of select="color" />
                            </td>
                            <td>
                                <xsl:value-of select="price" />
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>