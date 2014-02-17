<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

	<!-- imports the original docbook stylesheet -->
	<xsl:import href="urn:docbkx:stylesheet"/>

	<!--Highlight source-->
	<xsl:import href="urn:docbkx:stylesheet/highlight.xsl"/>

	<!--Форматирование-->

	<xsl:param name="body.font.master" select="10"/>
	<xsl:param name="body.start.indent" select="'0pt'"/>

	<xsl:attribute-set name="formal.title.properties">
		<xsl:attribute name="font-weight">bold</xsl:attribute>
		<xsl:attribute name="font-size">
			<xsl:value-of select="$body.font.master * 0.9"/>
			<xsl:text>pt</xsl:text>
		</xsl:attribute>
		<xsl:attribute name="hyphenate">false</xsl:attribute>
		<xsl:attribute name="space-after.minimum">0.4em</xsl:attribute>
		<xsl:attribute name="space-after.optimum">0.6em</xsl:attribute>
		<xsl:attribute name="space-after.maximum">0.8em</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="component.title.properties">
		<xsl:attribute name="text-align">left</xsl:attribute>
		<xsl:attribute name="color">#1c4c7d</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="example.title.properties"
					   use-attribute-sets="normal.para.spacing">
		<xsl:attribute name="space-before">5px</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="section.title.properties">
		<xsl:attribute name="text-align">left</xsl:attribute>
		<xsl:attribute name="color">#1c4c7d</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="section.title.level1.properties">
		<xsl:attribute name="font-size">16pt</xsl:attribute>
		<xsl:attribute name="color">#b23040</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="section.title.level2.properties">
		<xsl:attribute name="font-size">13pt</xsl:attribute>
		<xsl:attribute name="color">#c00000</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="section.title.level3.properties">
		<xsl:attribute name="font-size">11pt</xsl:attribute>
		<xsl:attribute name="color">#c00000</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="section.title.level4.properties">
		<xsl:attribute name="font-size">11pt</xsl:attribute>
		<xsl:attribute name="color">#6b0404</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="section.title.level5.properties">
		<xsl:attribute name="font-size">11pt</xsl:attribute>
		<xsl:attribute name="color">#6b0404</xsl:attribute>
		<xsl:attribute name="font-style">italic</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="section.title.level6.properties">
		<xsl:attribute name="font-size">11pt</xsl:attribute>
		<xsl:attribute name="color">#6b0404</xsl:attribute>
		<xsl:attribute name="font-style">italic</xsl:attribute>
	</xsl:attribute-set>

	<xsl:param name="hyphenate.verbatim" select="0"/>

	<xsl:attribute-set name="monospace.verbatim.properties"
					   use-attribute-sets="verbatim.properties">
		<xsl:attribute name="wrap-option">wrap</xsl:attribute>
		<xsl:attribute name="hyphenation-character">\</xsl:attribute>
		<!--    <xsl:attribute name="font-size">7pt</xsl:attribute>-->
	</xsl:attribute-set>

	<xsl:attribute-set name="verbatim.properties">
		<xsl:attribute name="font-size">
			<xsl:value-of select="$body.font.master * 0.8"/>
			<xsl:text>pt</xsl:text>
		</xsl:attribute>
		<xsl:attribute name="space-before.minimum">0.8em</xsl:attribute>
		<xsl:attribute name="space-before.optimum">1em</xsl:attribute>
		<xsl:attribute name="space-before.maximum">1.2em</xsl:attribute>
		<xsl:attribute name="space-after.minimum">0.8em</xsl:attribute>
		<xsl:attribute name="space-after.optimum">1em</xsl:attribute>
		<xsl:attribute name="space-after.maximum">1.2em</xsl:attribute>
		<xsl:attribute name="padding">3pt</xsl:attribute>
	</xsl:attribute-set>

	<!--
	<xsl:attribute-set name="normal.para.spacing">
		<xsl:attribute name="text-indent">2em</xsl:attribute>
		<xsl:attribute name="space-before.optimum">1em</xsl:attribute>
		<xsl:attribute name="space-before.minimum">0.8em</xsl:attribute>
		<xsl:attribute name="space-before.maximum">1.2em</xsl:attribute>
	  </xsl:attribute-set>
	  -->

	<xsl:param name="shade.verbatim" select="1"/>

	<xsl:attribute-set name="shade.verbatim.style">
		<xsl:attribute name="background-color">#f0f0f0</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="figure.properties">
		<xsl:attribute name="text-align">center</xsl:attribute>
	</xsl:attribute-set>

	<!-- set bellow all your custom xsl configuration -->


	<!--
		Important links:
		- http://www.sagehill.net/docbookxsl/
		- http://docbkx-tools.sourceforge.net/
	  -->

</xsl:stylesheet>