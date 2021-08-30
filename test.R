library(XML)
library(dplyr)
library(ggplot2)
endpoint_gas <- "http://openapi.airport.co.kr/service/rest/EpiDataService/getEpiGhDataService"
key <- "M%2Bk89wK%2Bls7GsrxulTKpEd0BdYm2b8JUoKuUYlYtTB2aKY2RccRl%2BMX1l21TjvWLtguW4f4lZNsZw9BriPeS1g%3D%3D"
url_gas <- paste0(endpoint_gas, "?serviceKey=", key)
url_gas

# 저장용 데이터베이스
totalData_gas <- data.frame() 

# Open API 호출
xmlDocument_gas <- xmlTreeParse(url_gas, useInternalNodes = TRUE, encoding = "UTF-8")
xmlDocument_gas

# XML Root Node 추출
rootNode_gas <- xmlRoot(xmlDocument_gas)
rootNode_gas

# item Node의 데이터 추출
xmlData_gas <- xmlToDataFrame(nodes = getNodeSet(rootNode,'//item'), stringsAsFactor = FALSE)
totalData_gas <- rbind(totalData, xmlData_gas)
totalData_gas
View(totalData_gas)
totalData_gas <- rename(totalData_gas,gasDir=fuel1,gasIndir=fuel2, gasTotal = totalTco2e, year=yyyy)
ggplot(data = totalData_gas, aes(x=year, y=gasTotal)) + geom_col()
totalData_gas

#전국공항 수송실적
endpoint_carry <- "http://openapi.airport.co.kr/service/rest/totalAirportStatsService/getAirportStats"
url_carry <- paste0(endpoint_carry,"?mberId=",id, "&serviceKey=", key, "&startDePd=20200101", "&endDePd=20201230")
url_carry

# 저장용 데이터베이스
totalData_carry <- data.frame()
totalData_carry

#API 호출
xmlDocument_carry <- xmlTreeParse(url_carry, useInternalNodes = TRUE, encoding = "UTF-8")
xmlDocument_carry
rootNode_carry <- xmlRoot(xmlDocument_carry)
rootNode_carry
# item Node의 데이터 추출
xmlData_carry <- xmlToDataFrame(nodes = getNodeSet(rootNode_carry,'//item'), stringsAsFactor = FALSE)
xmlData_carry
totalData_carry <- rbind(totalData_carry, xmlData_carry)
head(totalData_carry)
View(totalData_carry)
