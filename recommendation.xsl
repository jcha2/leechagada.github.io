<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:decimal-format name="won" decimal-separator="," />
	<xsl:template match="/">

		<html>
			<body>
				<div>
					<p>RAM</p>
					<table>
						<tr>
							<th>제품명</th>
							<th>제조사</th>
							<th>가격(최저가)</th>
							<th>메모리타입</th>
							<th>용량</th>
							<th>메모리타이밍</th>
						</tr>
						<xsl:for-each select="item/RAMs/ram">
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
									<xsl:value-of select="memorytype"></xsl:value-of>
								</td>
								<td>
									<xsl:value-of select="capacity"></xsl:value-of>
									GB
								</td>
								<td>
									<xsl:value-of select="memorytiming"></xsl:value-of>
								</td>
							</tr>

						</xsl:for-each>
					</table>

				</div>

				<div>
					<p>메인보드</p>
					<table>
						<tr>
							<th>제품명</th>
							<th>제조사</th>
							<th>가격(최저가)</th>
							<th>크기</th>
							<th>소켓</th>
							<th>칩셋</th>
						</tr>
						<xsl:for-each select="item/MOTHERBOARDs/motherboard">
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
				<div>
					<p>파워 서플라이</p>
					<table>
						<tr>
							<th>제품명</th>
							<th>제조사</th>
							<th>가격(최저가)</th>
							<th>크기</th>
							<th>용량</th>
						</tr>
						<xsl:for-each select="item/PSUs/psu">
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
									<xsl:value-of select="size"></xsl:value-of>
								</td>
								<td>
									<xsl:value-of select="capacity"></xsl:value-of>
								</td>

							</tr>

						</xsl:for-each>
					</table>

				</div>
				<div>
					<p>SSD</p>
					<table>
						<tr>
							<th>제품명</th>
							<th>제조사</th>
							<th>가격(최저가)</th>
							<th>용량</th>
							<th>읽기속도</th>
							<th>쓰기속도</th>
						</tr>
						<xsl:for-each select="item/SSDs/ssd">
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
								</td>
								<td>
									<xsl:value-of select="readspeed"></xsl:value-of>
								</td>
								<td>
									<xsl:value-of select="writespeed"></xsl:value-of>
								</td>

							</tr>

						</xsl:for-each>
					</table>

				</div>
				<div>
					<p>HDD</p>
					<table>
						<tr>
							<th>제품명</th>
							<th>제조사</th>
							<th>가격(최저가)</th>
							<th>용량</th>
							<th>버퍼메모리</th>
						</tr>
						<xsl:for-each select="item/HDDs/hdd">
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
								</td>
								<td>
									<xsl:value-of select="buffermemory"></xsl:value-of>
								</td>

							</tr>

						</xsl:for-each>
					</table>

				</div>
				<div>
					<p>내장형 ODD</p>
					<table>
						<tr>
							<th>제품명</th>
							<th>제조사</th>
							<th>가격(최저가)</th>
							<th>레코더타입</th>
						</tr>
						<xsl:for-each select="item/ODDs/internal/odd">
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
									<xsl:value-of select="record"></xsl:value-of>
								</td>

							</tr>

						</xsl:for-each>
					</table>

				</div>
				<div>
					<p>외장형 ODD</p>
					<table>
						<tr>
							<th>제품명</th>
							<th>제조사</th>
							<th>가격(최저가)</th>
							<th>레코더타입</th>
						</tr>
						<xsl:for-each select="item/ODDs/external/odd">
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