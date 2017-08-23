<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:decimal-format name="won" decimal-separator=","/>
	<xsl:template match="/">
	
		<html>
			<body>
				<div>
					<p>CPU</p>
					<table>
						<tr>
							<th>제품명</th>
							<th>제조사</th>
							<th>가격(최저가)</th>
							<th>코어</th>
							<th>스레드</th>
						
						</tr>
						<xsl:for-each select="item/CPUs/basic|general|high">
							<xsl:sort data-type="number" select="price"></xsl:sort>
							<tr>
								<td>
									<xsl:value-of select="name"></xsl:value-of>
								</td>
								<td>
									<xsl:value-of select="company"></xsl:value-of>
								</td>
								<td>
									<xsl:value-of select="format-number( price, '#,000', 'won')"></xsl:value-of>
									원대
								</td>
								<td>
									<xsl:value-of select="core"></xsl:value-of>개
								</td>
								<td>
									<xsl:value-of select="thread"></xsl:value-of>개
								</td>
							</tr>

						</xsl:for-each>
					</table>

				</div>
				
				<div>
					<p>cpu</p>
					<table>
						<tr>
							<th>제품명</th>
							<th>제조사</th>
							<th>가격(최저가)</th>
							<th>코어</th>
							<th>쓰레드</th>
						</tr>
						<xsl:for-each select="item/CPUs/basic/cpu">
							<xsl:sort data-type="number" select="price"></xsl:sort>
							<tr>
								<td>
									<xsl:value-of select="name"></xsl:value-of>
								</td>
								<td>
									<xsl:value-of select="company"></xsl:value-of>
								</td>
								<td>
									<xsl:value-of select="format-number( price, '#,000', 'won')"></xsl:value-of>
									원대
								</td>
								<td>
									<xsl:value-of select="core"></xsl:value-of>
								</td>
								<td>
									<xsl:value-of select="thread"></xsl:value-of>
								</td>
							
							</tr>

						</xsl:for-each>
					</table>

				</div>
				
				
				
			</body>

		</html>

	</xsl:template>
</xsl:stylesheet>