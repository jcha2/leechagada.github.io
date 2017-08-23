<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:decimal-format name="won" decimal-separator=","/>
	<xsl:template match="/">
		<html>
			<body>
				<h2>공통부품 추천</h2>
				
				<div class="col-12 col-m-12">
				<p>메인보드 추천</p>
					<table>
						<tr>
							<th>제품명</th>
							<th>제조사</th>
							<th>가격(최저가)</th>
							<th>크기</th>
							<th>소켓 규격</th>
							<th>칩셋</th>
						</tr>
						<xsl:for-each select="item/MOTHERBOARDs/motherboard">
							<xsl:sort select="price"></xsl:sort>
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
									<xsl:value-of select="size"></xsl:value-of>
								</td>
								<td>
									<xsl:value-of select="socket"></xsl:value-of>
								</td>
								<td>
									<xsl:value-of select="chipset"></xsl:value-of>
								</td>
							</tr>
						</xsl:for-each>
					</table>
				</div>
				
				<div class="col-12 col-m-12">
				<p>내장형</p>
					<table>
						<tr>
							<th>제품명</th>
							<th>제조사</th>
							<th>가격(최저가)</th>
							<th>레코드 타입</th>
						</tr>
						<xsl:for-each select="item/ODDs/internal/odd">
							<xsl:sort select="price"></xsl:sort>
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
									<xsl:value-of select="record"></xsl:value-of>
								</td>
							</tr>
						</xsl:for-each>
					</table>
				</div>
				
				<div class="col-12 col-m-12">
				<p>내장형</p>
					<table>
						<tr>
							<th>제품명</th>
							<th>제조사</th>
							<th>가격(최저가)</th>
							<th>레코드 타입</th>
						</tr>
						<xsl:for-each select="item/ODDs/internal/odd">
							<xsl:sort select="price"></xsl:sort>
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
									<xsl:value-of select="record"></xsl:value-of>
								</td>
							</tr>
						</xsl:for-each>
					</table>
				</div>
				
			
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>