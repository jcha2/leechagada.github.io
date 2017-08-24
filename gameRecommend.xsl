<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:decimal-format name="won" decimal-separator=","/>
	<xsl:template match="/">
	
		<html>
			<body>				
				<div class="col-11 col-m-12 RT">
					<p>CPU 일반형</p>
					
					<table>
						<tr>
							<th>제품명</th>
							<th>제조사</th>
							<th>가격(최저가)</th>
							<th>코어</th>
							<th>스레드</th>
						</tr>
						<xsl:for-each select="item/CPUs/general/cpu">
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
									개
								</td>
								<td>
									<xsl:value-of select="thread"></xsl:value-of>
									개
								</td>
							</tr>
						</xsl:for-each>
					</table>
				</div>
				
				<div class="col-11 col-m-12">
					<p>CPU 고급형</p>
					<table>
						<tr>
							<th>제품명</th>
							<th>제조사</th>
							<th>가격(최저가)</th>
							<th>코어</th>
							<th>스레드</th>

						</tr>
						<xsl:for-each select="item/CPUs/high/cpu">
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
									개
								</td>
								<td>
									<xsl:value-of select="thread"></xsl:value-of>
									개
								</td>
							</tr>
						</xsl:for-each>
					</table>
				</div>
				
				<div class="col-11 col-m-12">
					<p>CPU 최고급형</p>
					<table>
						<tr>
							<th>제품명</th>
							<th>제조사</th>
							<th>가격(최저가)</th>
							<th>코어</th>
							<th>스레드</th>

						</tr>
						<xsl:for-each select="item/CPUs/highest/cpu">
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
									개
								</td>
								<td>
									<xsl:value-of select="thread"></xsl:value-of>
									개
								</td>
							</tr>
						</xsl:for-each>
					</table>
				</div>
				
				<div class="col-11 col-m-12">
					<p>그래픽카드</p>
					<table>
						<tr>
							<th>제품명</th>
							<th>제조사</th>
							<th>가격(최저가)</th>
							<th>용량</th>
							<th>칩셋</th>
						</tr>
						<xsl:for-each select="item/VGAs/vga">
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
									<xsl:value-of select="capacity"></xsl:value-of>
									GB
								</td>
								<td>
									<xsl:value-of select="chipset"></xsl:value-of>
								</td>
							</tr>
						</xsl:for-each>
					</table>
				</div>
				
				
					<div class="col-11 col-m-12">
					<p>키보드</p>
					<table>
						<tr>
							<th>제품명</th>
							<th>제조사</th>
							<th>가격(최저가)</th>
							<th>특징</th>
							<th>설명</th>
						</tr>
						<xsl:for-each select="item/KEYBOARDs/game/keyboard">
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
									<xsl:value-of select="feature"></xsl:value-of>
								</td>
								<td>
									<xsl:value-of select="explain"></xsl:value-of>
								</td>
							</tr>
						</xsl:for-each>
					</table>
				</div>
				
				<div class="col-11 col-m-12">
					<p>마우스</p>
					<table>
						<tr>
							<th>제품명</th>
							<th>제조사</th>
							<th>가격(최저가)</th>
							<th>최대 감도</th>
							<th>최대 응답속도</th>
							<th>특징</th>
							<th>설명</th>
						</tr>
						<xsl:for-each select="item/MOUSEs/game/mouse">
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
									<xsl:value-of select="sensitivity"></xsl:value-of>
									dpi
								</td>
								<td>
									<xsl:value-of select="response"></xsl:value-of>
									hz 
								</td>
								<td>
									<xsl:value-of select="feature"></xsl:value-of>
								</td>
								<td>
									<xsl:value-of select="explain"></xsl:value-of>
								</td>
							</tr>
						</xsl:for-each>
					</table>
				</div>
				
			</body>

		</html>

	</xsl:template>
</xsl:stylesheet>