<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:stmd="http://apps.pmsf.net/STMD/SimulationTaskMetaData"
    exclude-result-prefixes="xs"
    version="2.0">

    <xsl:template match="stmd:Resource[@type='application/x-ssp-stmd-particle']">
        <xsl:copy>
            <xsl:apply-templates select="@kind|@id|@description|@source"/>
            <xsl:attribute name="type">text/markdown</xsl:attribute>
            <xsl:apply-templates select="node()"/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="stmd:any">
        <stmd:Markdown><xsl:value-of select="@content"/></stmd:Markdown>
    </xsl:template>
    
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
    
</xsl:stylesheet>