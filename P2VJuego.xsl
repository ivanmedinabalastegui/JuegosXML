<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>P2VJuego</title>
            </head>
            <body>
                <center>
                    <h1>
                        <b>Videojuegos del género Estrategia o Deportes</b>
                    </h1>
                </center>
                <hr/>
                <xsl:apply-templates select="Ocio/Videojuegos/Juego"/>
            </body>
        </html>

    </xsl:template>
    <xsl:template match="Ocio/Videojuegos/Juego">
        <xsl:if test="(@Género='Estrategia') or (@Género='Deportes')">
            <div>
                <br/>
                <b>Nombre del Videojuego:&#160;</b>
                <xsl:value-of select="Titulo"/> (<xsl:value-of select="@Género"/>)
                <br/>
                <br/>
                <hr/>
                <br/>
                <b>Fabricante:&#160;</b>
                <xsl:value-of select="Fabricante"/>
                <br/>
                <br/>
                <b>Edad:&#160;</b>
                <xsl:choose>
                    <xsl:when test="Edad > '17'">Adulto (A partir de 18)</xsl:when>
                    <xsl:when test="Edad > '15'">Mayorcito (A partir de 16)</xsl:when>
                    <xsl:when test="Edad &lt; '12'">3 (Para todos)</xsl:when>
                    <xsl:otherwise>12 (Para cruditos)</xsl:otherwise>
                </xsl:choose>
                <br/>
                <br/>
                <b>Comentario:&#160;</b>
                <xsl:value-of select="Comentario"/>
                <br/>
            </div>
            <br/>
            <hr/>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>
