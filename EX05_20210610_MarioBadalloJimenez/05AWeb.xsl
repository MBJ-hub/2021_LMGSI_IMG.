<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 05AWeb.xsl
    Created on : 10 de junio de 2021, 8:45
    Author     : daw1
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:include href="./lib/web.xsl"/>
    <xsl:template match="/mysqldump/database">
        <html>
            <xsl:call-template name="docTipo"/>
            <head>
                <title>05AWeb.xsl</title>
                <link rel="stylesheet" href="estilo.css" type="text/css"/>
                <xsl:call-template name="web"/>
                <xsl:param name="titulo"/>
                <xsl:param name="css"/>
            </head>
            <body>
                <h1>
                    <xsl:value-of select="concat('Base de datos: ',@name)"/>
                </h1>
                <footer>
                    Mario Badallo Jimenez.
                </footer>
            </body>
        </html>
    </xsl:template>
    <!--
    <xsl:template match="/database/table_structure">
        <xsl:for-each select=".">
            <h2>
                <xsl:value-of select="concat('Tabla: ',@name)"/>
            </h2>
            <table>
                <tr>
                    <xsl:apply-templates select="/database/table_structure/field"/>
                </tr>
                <table>
                    <xsl:apply-templates select="database/table_data/@name='DEPART'"/>
                </table>
            </table>
        </xsl:for-each>
    </xsl:template>
    <xsl:template match="database/table_data/">
        
    
        
        
      
    </xsl:template>
    -->
</xsl:stylesheet>