<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml"
                indent="yes"
                encoding="UTF-8"
                doctype-system="xkb.dtd" />

    <xsl:strip-space elements="*" />


    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>


    <xsl:template match="//layoutList/layout[configItem/name='us']/variantList[not (child::variant/configItem/name='colemak-dh')]/variant[configItem/name='colemak']">
        <variant>
            <configItem>
                <name>colemak-dh</name>
                <description>English (Colemak-DH)</description>
            </configItem>
        </variant>

        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>

</xsl:stylesheet>
