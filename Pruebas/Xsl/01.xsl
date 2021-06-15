<?xml version="1.0" encoding="UTF-8"?>
<!--
    Document   : 01.xsl
    Created on : 06 de abril de 2020, 9:08
    Author     : Mario
    Description:
        Transformacion de 01.xml en un archivo con la lista de nombres y apellidos
                Usando una sola plantilla (xsl:template)
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>  
    
    <xsl:template match="alumno">
        <p> 
            <xsl:value-of select="concat(nombre,' ', apellido)"/>
        </p>
        <p> 
            <xsl:value-of select="concat direcion(cp)"></xsl:value-of>
            <xsl:apply-templates select="concat(direccion/cp, ' ' direcion/poblacion)"/>
        </p>
    </xsl:template>
    
    <!-- EJ 2 Para selecionar cada una de las direcciones.
    <xsl:template match="alumno">
                <p><xsl:value-of select="concat(nombre,' ',apellido)"/></p>
                <xsl:apply-templates select="direccion"/>
           <hr/>
    </xsl:template>
    <xsl:template match="direccion">
        <p>Poblacion: <xsl:value-of select="poblacion"/> </p>
        <p> <xsl:value-of select="cp"/></p>
    </xsl:template>
    -->
    
    <!-- 
    <body>
        <h1>Listado de alumnos</h1>
            <ol>
                <xsl:apply-templates select="alumno"/>
            </ol>
    </body>
    </html>
    </xsl:template>
    
    <xsl:template match="alumno">
        <li>
            <xsl:value-of select="concat(nombre,' ',apellido)"/>
            <ol>
                <xsl:apply-templates select="direccion"/>
            </ol>
        </li> >  
       
        <hr/>
    </xsl:template>
    
    <xsl:template match="direccion">
        <p>Poblacion: <xsl:value-of select="poblacion"/></p>
        <p> 
            <xsl:value-of select="cp"/>
        </p>
    </xsl:template> -->
</xsl:stylesheet>
