#MA615 Midterm Project
#Chicago 2016 Crimes Data / https://catalog.data.gov/dataset/crimes-2001-to-present-398a4
#Ningxi Wei, Lu Li

library(tidyr)
library(dplyr)
library(ggplot2)

#First we import the whole data and make a general data frame, data explosion!
data <- data.frame(data=read.csv("Crimes.csv",header = TRUE, stringsAsFactors = TRUE))

#Then we extract the columns we interested, here we are interested the types of crimes, location, community area and year.

df <-subset(data, select = c("data.Year","data.Primary.Type","data.Location.Description","data.Community.Area"))
write.csv(df, file = "CrimesSelected.csv")

d1 <- data.frame(data=read.csv("CrimesSelected.csv",header = TRUE, stringsAsFactors = TRUE))

#We only use data within 2016, then we delete the year column since we know all the data left happened in 2016
d1a <-subset(d1, data.data.Year>=2016)


d1a$data.X <- NULL
d1a$data.data.Year <-NULL

colnames(d1a) <- c("Primary Type", "Location Description", "Community Area")

#Sort community Area code in increading numerical order, sort crime type and location description in alphabetical increasing order
d1b <- d1a[order(d1a$`Community Area`,d1a$`Primary Type`,d1a$`Location Description`),] 
write.csv(d1b, file = "Crimes2016.csv")

#try community area 1 as an example
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA1 <- filter(df,df$data.Community.Area==1)
crimeTypeCount1<-as.data.frame(table(dfCA1$data.Primary.Type))
colnames(crimeTypeCount1)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount1<-arrange(crimeTypeCount1,desc(Occurrence))
write.csv(crimeTypeCount1, file = "CrimesTypeCount01.csv")

#community area 2
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA2 <- filter(df,df$data.Community.Area==2)
crimeTypeCount2<-as.data.frame(table(dfCA2$data.Primary.Type))
colnames(crimeTypeCount2)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount2<-arrange(crimeTypeCount2,desc(Occurrence))
write.csv(crimeTypeCount2, file = "CrimesTypeCount02.csv")

#community area 3
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA3 <- filter(df,df$data.Community.Area==3)
crimeTypeCount3<-as.data.frame(table(dfCA3$data.Primary.Type))
colnames(crimeTypeCount3)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount3<-arrange(crimeTypeCount3,desc(Occurrence))
write.csv(crimeTypeCount3, file = "CrimesTypeCount03.csv")

#community area 4
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA4 <- filter(df,df$data.Community.Area==4)
crimeTypeCount4<-as.data.frame(table(dfCA4$data.Primary.Type))
colnames(crimeTypeCount4)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount4<-arrange(crimeTypeCount4,desc(Occurrence))
write.csv(crimeTypeCount4, file = "CrimesTypeCount04.csv")

#community area 5
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA5 <- filter(df,df$data.Community.Area==5)
crimeTypeCount5<-as.data.frame(table(dfCA5$data.Primary.Type))
colnames(crimeTypeCount5)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount5<-arrange(crimeTypeCount5,desc(Occurrence))
write.csv(crimeTypeCount5, file = "CrimesTypeCount05.csv")

#community area 6
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA6 <- filter(df,df$data.Community.Area==6)
crimeTypeCount6<-as.data.frame(table(dfCA6$data.Primary.Type))
colnames(crimeTypeCount6)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount6<-arrange(crimeTypeCount6,desc(Occurrence))
write.csv(crimeTypeCount6, file = "CrimesTypeCount06.csv")

#community area 7
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA7 <- filter(df,df$data.Community.Area==7)
crimeTypeCount7<-as.data.frame(table(dfCA7$data.Primary.Type))
colnames(crimeTypeCount7)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount7<-arrange(crimeTypeCount7,desc(Occurrence))
write.csv(crimeTypeCount7, file = "CrimesTypeCount07.csv")

#community area 8
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA8 <- filter(df,df$data.Community.Area==8)
crimeTypeCount8<-as.data.frame(table(dfCA8$data.Primary.Type))
colnames(crimeTypeCount8)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount8<-arrange(crimeTypeCount8,desc(Occurrence))
write.csv(crimeTypeCount8, file = "CrimesTypeCount08.csv")

#community area 9
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA9 <- filter(df,df$data.Community.Area==9)
crimeTypeCount9<-as.data.frame(table(dfCA9$data.Primary.Type))
colnames(crimeTypeCount9)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount9<-arrange(crimeTypeCount9,desc(Occurrence))
write.csv(crimeTypeCount9, file = "CrimesTypeCount09.csv")

#community area 10
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA10 <- filter(df,df$data.Community.Area==10)
crimeTypeCount10<-as.data.frame(table(dfCA10$data.Primary.Type))
colnames(crimeTypeCount10)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount10<-arrange(crimeTypeCount10,desc(Occurrence))
write.csv(crimeTypeCount10, file = "CrimesTypeCount10.csv")

#community area 11
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA11 <- filter(df,df$data.Community.Area==11)
crimeTypeCount11<-as.data.frame(table(dfCA11$data.Primary.Type))
colnames(crimeTypeCount11)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount11<-arrange(crimeTypeCount11,desc(Occurrence))
write.csv(crimeTypeCount11, file = "CrimesTypeCount11.csv")

#community area 12
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA12 <- filter(df,df$data.Community.Area==12)
crimeTypeCount12<-as.data.frame(table(dfCA12$data.Primary.Type))
colnames(crimeTypeCount12)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount12<-arrange(crimeTypeCount12,desc(Occurrence))
write.csv(crimeTypeCount12, file = "CrimesTypeCount12.csv")

#community area 13
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA13 <- filter(df,df$data.Community.Area==13)
crimeTypeCount13<-as.data.frame(table(dfCA13$data.Primary.Type))
colnames(crimeTypeCount13)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount13<-arrange(crimeTypeCount13,desc(Occurrence))
write.csv(crimeTypeCount13, file = "CrimesTypeCount13.csv")

#community area 14
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA14 <- filter(df,df$data.Community.Area==14)
crimeTypeCount14<-as.data.frame(table(dfCA14$data.Primary.Type))
colnames(crimeTypeCount14)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount14<-arrange(crimeTypeCount14,desc(Occurrence))
write.csv(crimeTypeCount14, file = "CrimesTypeCount14.csv")

#community area 15
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA15 <- filter(df,df$data.Community.Area==15)
crimeTypeCount15<-as.data.frame(table(dfCA15$data.Primary.Type))
colnames(crimeTypeCount15)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount15<-arrange(crimeTypeCount15,desc(Occurrence))
write.csv(crimeTypeCount15, file = "CrimesTypeCount15.csv")

#community area 16
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA16 <- filter(df,df$data.Community.Area==16)
crimeTypeCount16<-as.data.frame(table(dfCA16$data.Primary.Type))
colnames(crimeTypeCount16)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount16<-arrange(crimeTypeCount16,desc(Occurrence))
write.csv(crimeTypeCount16, file = "CrimesTypeCount16.csv")

#community area 17
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA17 <- filter(df,df$data.Community.Area==17)
crimeTypeCount17<-as.data.frame(table(dfCA17$data.Primary.Type))
colnames(crimeTypeCount17)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount17<-arrange(crimeTypeCount17,desc(Occurrence))
write.csv(crimeTypeCount17, file = "CrimesTypeCount17.csv")

#community area 18
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA18 <- filter(df,df$data.Community.Area==18)
crimeTypeCount18<-as.data.frame(table(dfCA18$data.Primary.Type))
colnames(crimeTypeCount18)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount18<-arrange(crimeTypeCount18,desc(Occurrence))
write.csv(crimeTypeCount18, file = "CrimesTypeCount18.csv")

#community area 19
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA19 <- filter(df,df$data.Community.Area==19)
crimeTypeCount19<-as.data.frame(table(dfCA19$data.Primary.Type))
colnames(crimeTypeCount19)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount19<-arrange(crimeTypeCount19,desc(Occurrence))
write.csv(crimeTypeCount19, file = "CrimesTypeCount19.csv")

#community area 20
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA20 <- filter(df,df$data.Community.Area==20)
crimeTypeCount20<-as.data.frame(table(dfCA20$data.Primary.Type))
colnames(crimeTypeCount20)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount20<-arrange(crimeTypeCount20,desc(Occurrence))
write.csv(crimeTypeCount20, file = "CrimesTypeCount20.csv")


#community area 21
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA21 <- filter(df,df$data.Community.Area==21)
crimeTypeCount21<-as.data.frame(table(dfCA21$data.Primary.Type))
colnames(crimeTypeCount21)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount21<-arrange(crimeTypeCount21,desc(Occurrence))
write.csv(crimeTypeCount21, file = "CrimesTypeCount21.csv")

#community area 22
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA22 <- filter(df,df$data.Community.Area==22)
crimeTypeCount22<-as.data.frame(table(dfCA22$data.Primary.Type))
colnames(crimeTypeCount22)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount22<-arrange(crimeTypeCount22,desc(Occurrence))
write.csv(crimeTypeCount22, file = "CrimesTypeCount22.csv")

#community area 23
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA23 <- filter(df,df$data.Community.Area==23)
crimeTypeCount23<-as.data.frame(table(dfCA23$data.Primary.Type))
colnames(crimeTypeCount23)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount23<-arrange(crimeTypeCount23,desc(Occurrence))
write.csv(crimeTypeCount23, file = "CrimesTypeCount23.csv")

#community area 24
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA24 <- filter(df,df$data.Community.Area==24)
crimeTypeCount24<-as.data.frame(table(dfCA24$data.Primary.Type))
colnames(crimeTypeCount24)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount24<-arrange(crimeTypeCount24,desc(Occurrence))
write.csv(crimeTypeCount24, file = "CrimesTypeCount24.csv")

#community area 25
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA25 <- filter(df,df$data.Community.Area==25)
crimeTypeCount25<-as.data.frame(table(dfCA25$data.Primary.Type))
colnames(crimeTypeCount25)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount25<-arrange(crimeTypeCount25,desc(Occurrence))
write.csv(crimeTypeCount25, file = "CrimesTypeCount25.csv")

#community area 26
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA26 <- filter(df,df$data.Community.Area==26)
crimeTypeCount26<-as.data.frame(table(dfCA26$data.Primary.Type))
colnames(crimeTypeCount26)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount26<-arrange(crimeTypeCount26,desc(Occurrence))
write.csv(crimeTypeCount26, file = "CrimesTypeCount26.csv")

#community area 27
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA27 <- filter(df,df$data.Community.Area==27)
crimeTypeCount27<-as.data.frame(table(dfCA27$data.Primary.Type))
colnames(crimeTypeCount27)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount27<-arrange(crimeTypeCount27,desc(Occurrence))
write.csv(crimeTypeCount27, file = "CrimesTypeCount27.csv")

#community area 28
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA28 <- filter(df,df$data.Community.Area==28)
crimeTypeCount28<-as.data.frame(table(dfCA28$data.Primary.Type))
colnames(crimeTypeCount28)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount28<-arrange(crimeTypeCount28,desc(Occurrence))
write.csv(crimeTypeCount28, file = "CrimesTypeCount28.csv")

#community area 29
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA29 <- filter(df,df$data.Community.Area==29)
crimeTypeCount29<-as.data.frame(table(dfCA29$data.Primary.Type))
colnames(crimeTypeCount29)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount29<-arrange(crimeTypeCount29,desc(Occurrence))
write.csv(crimeTypeCount29, file = "CrimesTypeCount29.csv")

#community area 30
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA30 <- filter(df,df$data.Community.Area==30)
crimeTypeCount30<-as.data.frame(table(dfCA30$data.Primary.Type))
colnames(crimeTypeCount30)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount30<-arrange(crimeTypeCount30,desc(Occurrence))
write.csv(crimeTypeCount30, file = "CrimesTypeCount30.csv")

#community area 31
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA31 <- filter(df,df$data.Community.Area==31)
crimeTypeCount31<-as.data.frame(table(dfCA31$data.Primary.Type))
colnames(crimeTypeCount31)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount31<-arrange(crimeTypeCount31,desc(Occurrence))
write.csv(crimeTypeCount31, file = "CrimesTypeCount31.csv")

#community area 32
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA32 <- filter(df,df$data.Community.Area==32)
crimeTypeCount32<-as.data.frame(table(dfCA32$data.Primary.Type))
colnames(crimeTypeCount32)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount32<-arrange(crimeTypeCount32,desc(Occurrence))
write.csv(crimeTypeCount32, file = "CrimesTypeCount32.csv")

#community area 33
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA33 <- filter(df,df$data.Community.Area==33)
crimeTypeCount33<-as.data.frame(table(dfCA33$data.Primary.Type))
colnames(crimeTypeCount33)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount33<-arrange(crimeTypeCount33,desc(Occurrence))
write.csv(crimeTypeCount33, file = "CrimesTypeCount33.csv")

#community area 34
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA34 <- filter(df,df$data.Community.Area==34)
crimeTypeCount34<-as.data.frame(table(dfCA34$data.Primary.Type))
colnames(crimeTypeCount34)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount34<-arrange(crimeTypeCount34,desc(Occurrence))
write.csv(crimeTypeCount34, file = "CrimesTypeCount34.csv")

#community area 35
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA35 <- filter(df,df$data.Community.Area==35)
crimeTypeCount35<-as.data.frame(table(dfCA35$data.Primary.Type))
colnames(crimeTypeCount35)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount35<-arrange(crimeTypeCount35,desc(Occurrence))
write.csv(crimeTypeCount35, file = "CrimesTypeCount35.csv")

#community area 36
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA36 <- filter(df,df$data.Community.Area==36)
crimeTypeCount36<-as.data.frame(table(dfCA36$data.Primary.Type))
colnames(crimeTypeCount36)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount36<-arrange(crimeTypeCount36,desc(Occurrence))
write.csv(crimeTypeCount36, file = "CrimesTypeCount36.csv")

#community area 37
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA37 <- filter(df,df$data.Community.Area==37)
crimeTypeCount37<-as.data.frame(table(dfCA37$data.Primary.Type))
colnames(crimeTypeCount37)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount37<-arrange(crimeTypeCount37,desc(Occurrence))
write.csv(crimeTypeCount37, file = "CrimesTypeCount37.csv")

#community area 38
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA38 <- filter(df,df$data.Community.Area==38)
crimeTypeCount38<-as.data.frame(table(dfCA38$data.Primary.Type))
colnames(crimeTypeCount38)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount38<-arrange(crimeTypeCount38,desc(Occurrence))
write.csv(crimeTypeCount38, file = "CrimesTypeCount38.csv")

#community area 39
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA39 <- filter(df,df$data.Community.Area==39)
crimeTypeCount39<-as.data.frame(table(dfCA39$data.Primary.Type))
colnames(crimeTypeCount39)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount39<-arrange(crimeTypeCount39,desc(Occurrence))
write.csv(crimeTypeCount39, file = "CrimesTypeCount39.csv")

#community area 40
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA40 <- filter(df,df$data.Community.Area==40)
crimeTypeCount40<-as.data.frame(table(dfCA40$data.Primary.Type))
colnames(crimeTypeCount40)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount40<-arrange(crimeTypeCount40,desc(Occurrence))
write.csv(crimeTypeCount40, file = "CrimesTypeCount40.csv")

#community area 41
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA41 <- filter(df,df$data.Community.Area==41)
crimeTypeCount41<-as.data.frame(table(dfCA41$data.Primary.Type))
colnames(crimeTypeCount41)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount41<-arrange(crimeTypeCount41,desc(Occurrence))
write.csv(crimeTypeCount41, file = "CrimesTypeCount41.csv")

#community area 42
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA42 <- filter(df,df$data.Community.Area==42)
crimeTypeCount42<-as.data.frame(table(dfCA42$data.Primary.Type))
colnames(crimeTypeCount42)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount42<-arrange(crimeTypeCount42,desc(Occurrence))
write.csv(crimeTypeCount42, file = "CrimesTypeCount42.csv")

#community area 43
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA43 <- filter(df,df$data.Community.Area==43)
crimeTypeCount43<-as.data.frame(table(dfCA43$data.Primary.Type))
colnames(crimeTypeCount43)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount43<-arrange(crimeTypeCount43,desc(Occurrence))
write.csv(crimeTypeCount43, file = "CrimesTypeCount43.csv")

#community area 44
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA44 <- filter(df,df$data.Community.Area==44)
crimeTypeCount44<-as.data.frame(table(dfCA44$data.Primary.Type))
colnames(crimeTypeCount44)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount44<-arrange(crimeTypeCount44,desc(Occurrence))
write.csv(crimeTypeCount44, file = "CrimesTypeCount44.csv")

#community area 45
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA45 <- filter(df,df$data.Community.Area==45)
crimeTypeCount45<-as.data.frame(table(dfCA45$data.Primary.Type))
colnames(crimeTypeCount45)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount45<-arrange(crimeTypeCount45,desc(Occurrence))
write.csv(crimeTypeCount45, file = "CrimesTypeCount45.csv")

#community area 46
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA46 <- filter(df,df$data.Community.Area==46)
crimeTypeCount46<-as.data.frame(table(dfCA46$data.Primary.Type))
colnames(crimeTypeCount46)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount46<-arrange(crimeTypeCount46,desc(Occurrence))
write.csv(crimeTypeCount46, file = "CrimesTypeCount46.csv")

#community area 47
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA47 <- filter(df,df$data.Community.Area==47)
crimeTypeCount47<-as.data.frame(table(dfCA47$data.Primary.Type))
colnames(crimeTypeCount47)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount47<-arrange(crimeTypeCount47,desc(Occurrence))
write.csv(crimeTypeCount47, file = "CrimesTypeCount47.csv")

#community area 48
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA48 <- filter(df,df$data.Community.Area==48)
crimeTypeCount48<-as.data.frame(table(dfCA48$data.Primary.Type))
colnames(crimeTypeCount48)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount48<-arrange(crimeTypeCount48,desc(Occurrence))
write.csv(crimeTypeCount48, file = "CrimesTypeCount48.csv")

#community area 49
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA49 <- filter(df,df$data.Community.Area==49)
crimeTypeCount49<-as.data.frame(table(dfCA49$data.Primary.Type))
colnames(crimeTypeCount49)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount49<-arrange(crimeTypeCount49,desc(Occurrence))
write.csv(crimeTypeCount49, file = "CrimesTypeCount49.csv")

#community area 50
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA50 <- filter(df,df$data.Community.Area==50)
crimeTypeCount50<-as.data.frame(table(dfCA50$data.Primary.Type))
colnames(crimeTypeCount50)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount50<-arrange(crimeTypeCount50,desc(Occurrence))
write.csv(crimeTypeCount50, file = "CrimesTypeCount50.csv")


#community area 51
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA51 <- filter(df,df$data.Community.Area==51)
crimeTypeCount51<-as.data.frame(table(dfCA51$data.Primary.Type))
colnames(crimeTypeCount51)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount51<-arrange(crimeTypeCount51,desc(Occurrence))
write.csv(crimeTypeCount51, file = "CrimesTypeCount51.csv")

#community area 52
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA52 <- filter(df,df$data.Community.Area==52)
crimeTypeCount52<-as.data.frame(table(dfCA52$data.Primary.Type))
colnames(crimeTypeCount52)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount52<-arrange(crimeTypeCount52,desc(Occurrence))
write.csv(crimeTypeCount52, file = "CrimesTypeCount52.csv")

#community area 53
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA53 <- filter(df,df$data.Community.Area==53)
crimeTypeCount53<-as.data.frame(table(dfCA53$data.Primary.Type))
colnames(crimeTypeCount53)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount53<-arrange(crimeTypeCount53,desc(Occurrence))
write.csv(crimeTypeCount53, file = "CrimesTypeCount53.csv")

#community area 54
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA54 <- filter(df,df$data.Community.Area==54)
crimeTypeCount54<-as.data.frame(table(dfCA54$data.Primary.Type))
colnames(crimeTypeCount54)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount54<-arrange(crimeTypeCount54,desc(Occurrence))
write.csv(crimeTypeCount54, file = "CrimesTypeCount54.csv")

#community area 55
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA55 <- filter(df,df$data.Community.Area==55)
crimeTypeCount55<-as.data.frame(table(dfCA55$data.Primary.Type))
colnames(crimeTypeCount55)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount55<-arrange(crimeTypeCount55,desc(Occurrence))
write.csv(crimeTypeCount55, file = "CrimesTypeCount55.csv")

#community area 56
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA56 <- filter(df,df$data.Community.Area==56)
crimeTypeCount56<-as.data.frame(table(dfCA56$data.Primary.Type))
colnames(crimeTypeCount56)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount56<-arrange(crimeTypeCount56,desc(Occurrence))
write.csv(crimeTypeCount56, file = "CrimesTypeCount56.csv")

#community area 57
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA57 <- filter(df,df$data.Community.Area==57)
crimeTypeCount57<-as.data.frame(table(dfCA57$data.Primary.Type))
colnames(crimeTypeCount57)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount57<-arrange(crimeTypeCount57,desc(Occurrence))
write.csv(crimeTypeCount57, file = "CrimesTypeCount57.csv")

#community area 58
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA58 <- filter(df,df$data.Community.Area==58)
crimeTypeCount58<-as.data.frame(table(dfCA58$data.Primary.Type))
colnames(crimeTypeCount58)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount58<-arrange(crimeTypeCount58,desc(Occurrence))
write.csv(crimeTypeCount58, file = "CrimesTypeCount58.csv")

#community area 59
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA59 <- filter(df,df$data.Community.Area==59)
crimeTypeCount59<-as.data.frame(table(dfCA59$data.Primary.Type))
colnames(crimeTypeCount59)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount59<-arrange(crimeTypeCount59,desc(Occurrence))
write.csv(crimeTypeCount59, file = "CrimesTypeCount59.csv")

#community area 60
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA60 <- filter(df,df$data.Community.Area==60)
crimeTypeCount60<-as.data.frame(table(dfCA60$data.Primary.Type))
colnames(crimeTypeCount60)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount60<-arrange(crimeTypeCount60,desc(Occurrence))
write.csv(crimeTypeCount60, file = "CrimesTypeCount60.csv")

#community area 61
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA61 <- filter(df,df$data.Community.Area==61)
crimeTypeCount61<-as.data.frame(table(dfCA61$data.Primary.Type))
colnames(crimeTypeCount61)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount61<-arrange(crimeTypeCount61,desc(Occurrence))
write.csv(crimeTypeCount61, file = "CrimesTypeCount61.csv")

#community area 62
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA62 <- filter(df,df$data.Community.Area==62)
crimeTypeCount62<-as.data.frame(table(dfCA62$data.Primary.Type))
colnames(crimeTypeCount62)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount62<-arrange(crimeTypeCount62,desc(Occurrence))
write.csv(crimeTypeCount62, file = "CrimesTypeCount62.csv")

#community area 63
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA63 <- filter(df,df$data.Community.Area==63)
crimeTypeCount63<-as.data.frame(table(dfCA63$data.Primary.Type))
colnames(crimeTypeCount63)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount63<-arrange(crimeTypeCount63,desc(Occurrence))
write.csv(crimeTypeCount63, file = "CrimesTypeCount63.csv")

#community area 64
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA64 <- filter(df,df$data.Community.Area==64)
crimeTypeCount64<-as.data.frame(table(dfCA64$data.Primary.Type))
colnames(crimeTypeCount64)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount64<-arrange(crimeTypeCount64,desc(Occurrence))
write.csv(crimeTypeCount64, file = "CrimesTypeCount64.csv")

#community area 65
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA65 <- filter(df,df$data.Community.Area==65)
crimeTypeCount65<-as.data.frame(table(dfCA65$data.Primary.Type))
colnames(crimeTypeCount65)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount65<-arrange(crimeTypeCount65,desc(Occurrence))
write.csv(crimeTypeCount65, file = "CrimesTypeCount65.csv")

#community area 66
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA66 <-  filter(df,df$data.Community.Area==66)
crimeTypeCount66<-as.data.frame(table(dfCA66$data.Primary.Type))
colnames(crimeTypeCount66)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount66<-arrange(crimeTypeCount66,desc(Occurrence))
write.csv(crimeTypeCount66, file = "CrimesTypeCount66.csv")

#community area 67
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA67 <- filter(df,df$data.Community.Area==67)
crimeTypeCount67<-as.data.frame(table(dfCA67$data.Primary.Type))
colnames(crimeTypeCount67)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount67<-arrange(crimeTypeCount67,desc(Occurrence))
write.csv(crimeTypeCount67, file = "CrimesTypeCount67.csv")


#community area 68
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA68 <-  filter(df,df$data.Community.Area==68)
crimeTypeCount68<-as.data.frame(table(dfCA68$data.Primary.Type))
colnames(crimeTypeCount68)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount68<-arrange(crimeTypeCount68,desc(Occurrence))
write.csv(crimeTypeCount68, file = "CrimesTypeCount68.csv")

#community area 69
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA69 <- filter(df,df$data.Community.Area==69)
crimeTypeCount69<-as.data.frame(table(dfCA69$data.Primary.Type))
colnames(crimeTypeCount69)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount69<-arrange(crimeTypeCount69,desc(Occurrence))
write.csv(crimeTypeCount69, file = "CrimesTypeCount69.csv")

#community area 70
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA70 <- filter(df,df$data.Community.Area==70)
crimeTypeCount70<-as.data.frame(table(dfCA70$data.Primary.Type))
colnames(crimeTypeCount70)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount70<-arrange(crimeTypeCount70,desc(Occurrence))
write.csv(crimeTypeCount70, file = "CrimesTypeCount70.csv")

#community area 71
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA71 <- filter(df,df$data.Community.Area==71)
crimeTypeCount71<-as.data.frame(table(dfCA71$data.Primary.Type))
colnames(crimeTypeCount71)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount71<-arrange(crimeTypeCount71,desc(Occurrence))
write.csv(crimeTypeCount71, file = "CrimesTypeCount71.csv")

#community area 72
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA72 <- filter(df,df$data.Community.Area==72)
crimeTypeCount72<-as.data.frame(table(dfCA72$data.Primary.Type))
colnames(crimeTypeCount72)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount72<-arrange(crimeTypeCount72,desc(Occurrence))
write.csv(crimeTypeCount72, file = "CrimesTypeCount72.csv")


#community area 73
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA73 <- filter(df,df$data.Community.Area==73)
crimeTypeCount73<-as.data.frame(table(dfCA73$data.Primary.Type))
colnames(crimeTypeCount73)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount73<-arrange(crimeTypeCount73,desc(Occurrence))
write.csv(crimeTypeCount73, file = "CrimesTypeCount73.csv")

#community area 74
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA74 <- filter(df,df$data.Community.Area==74)
crimeTypeCount74<-as.data.frame(table(dfCA74$data.Primary.Type))
colnames(crimeTypeCount74)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount74<-arrange(crimeTypeCount74,desc(Occurrence))
write.csv(crimeTypeCount74, file = "CrimesTypeCount74.csv")

#community area 75
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA75 <- filter(df,df$data.Community.Area==75)
crimeTypeCount75<-as.data.frame(table(dfCA75$data.Primary.Type))
colnames(crimeTypeCount75)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount75<-arrange(crimeTypeCount75,desc(Occurrence))
write.csv(crimeTypeCount75, file = "CrimesTypeCount75.csv")

#community area 76
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA76 <- filter(df,df$data.Community.Area==76)
crimeTypeCount76<-as.data.frame(table(dfCA76$data.Primary.Type))
colnames(crimeTypeCount76)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount76<-arrange(crimeTypeCount76,desc(Occurrence))
write.csv(crimeTypeCount76, file = "CrimesTypeCount76.csv")

#community area 77
df <- data.frame(data=read.csv("Crimes2016.csv",header = TRUE, stringsAsFactors = TRUE))
dfCA77 <- filter(df,df$data.Community.Area==77)
crimeTypeCount77<-as.data.frame(table(dfCA77$data.Primary.Type))
colnames(crimeTypeCount77)<-c("Crime Type","Occurrence")
#rank by Occurrence
crimeTypeCount77<-arrange(crimeTypeCount77,desc(Occurrence))
write.csv(crimeTypeCount77, file = "CrimesTypeCount77.csv")

