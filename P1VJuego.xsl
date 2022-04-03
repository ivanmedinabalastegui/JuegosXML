<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
        <html>
            <head>
                <title>P1VJuego.xsl</title>
            </head>
            <body>
                <center>
                    <h1><u>Listado de Videojuegos</u></h1>
                </center>
                <table border="1" align="center">
                    <xsl:for-each select="Ocio/Videojuegos/Juego">
                        <xsl:sort select="Precio" order="descending"/>
                        <tr align="center" BGCOLOR="PINK">
                            <td colspan="2">Título</td>
                            <td>Fabricante</td>
                            <td>Género</td>
                            <td>Precio</td>
                            <td>Edad</td>
                        </tr>
                        <tr align="center">
                            <td colspan="2">
                                <b>
                                    <xsl:value-of select="Titulo"/>
                                </b>
                            </td>
                            <td>
                                <xsl:value-of select="Fabricante"/>
                            </td>
                            <td>
                                <xsl:value-of select="@Género"/>
                            </td>
                            <td>
                                <xsl:value-of select="Precio"/>
                            </td>
                            <td>
                                <b>
                                    <xsl:choose>
                                        <xsl:when test="Edad > '17'">Adulto (A partir de 18)</xsl:when>
                                        <xsl:when test="Edad > '15'">Mayorcito (A partir de 16)</xsl:when>
                                        <xsl:when test="Edad &lt; '12'">Todos</xsl:when>
                                        <xsl:otherwise>Crudito (A partir de 12)</xsl:otherwise>
                                    </xsl:choose>
                                </b>
                            </td>
                        </tr>
                        <tr align="center" bgcolor="pink">
                            <td colspan="8">De qué va :</td>
                        </tr>
                        <tr align="center" bgcolor="acqua">
                            <td colspan="6" style="color:white">
                                <xsl:value-of select="Comentario"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>