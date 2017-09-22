<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.og/2001/XMLSchema"
    xmlns:xlink="http://www.w3.org/1999/xlink"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns="http://www.loc.gov/mods/v3"
    xsi:schemaLocation="http://www.loc.gov/mods/v3 http://www.loc.gov/standards/mods/v3/mods-3-5.xsd"
    exclude-result-prefixes="xs"
    xpath-default-namespace="http://www.loc.gov/mods/v3"
    version="2.0">
    
    <xsl:output method="xml" indent="yes" encoding="UTF-8"/>
    
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
    
    
    <xsl:template match='relatedItem/identifier[text()="MPA.3781"]'>
        <identifier type="local">MS.3781</identifier>
    </xsl:template>
    
<!--    <xsl:template match='note'>
        <xsl:variable name="pertest" select="if (matches(.,'\.$')) 
            then (.) 
            else (concat(., '.'))"/>
        <abstract><xsl:value-of select="$pertest"/></abstract>
    </xsl:template>
    <xsl:template match='abstract'>
        <xsl:copy><xsl:apply-templates/></xsl:copy>
    </xsl:template>-->
    
    <xsl:template match="abstract">
        <xsl:variable name="pertest" select="if (matches(../note, '\.$'))
            then (../note)
            else (concat(../note, '.'))"/>
        <abstract><xsl:value-of select="$pertest"/></abstract>
        <xsl:copy><xsl:apply-templates/></xsl:copy>
    </xsl:template>
    
    <xsl:template match="note"/>
</xsl:stylesheet>