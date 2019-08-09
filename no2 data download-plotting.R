#install.packages("rgdal")
#install.packages("raster")
library(rgdal)
library(raster)

##### download .zip .grd data monthly NO2 data files from temis.nl ######


## 1998

url <-"http://temis.nl/airpollution/no2col/data/gome/1998/02/no2_199802.grd.zip"
temp <- tempfile()
temp2 <- tempfile()
download.file(url, temp)
unzip(zipfile = temp, exdir = temp2)
d.9802 <- raster(file.path(temp2, "no2_199802.grd"))
unlink(c(temp, temp2))

url <-"http://temis.nl/airpollution/no2col/data/gome/1998/03/no2_199803.grd.zip"
temp <- tempfile()
temp2 <- tempfile()
download.file(url, temp)
unzip(zipfile = temp, exdir = temp2)
d.9803 <- raster(file.path(temp2, "no2_199803.grd"))
unlink(c(temp, temp2))

url <-"http://temis.nl/airpollution/no2col/data/gome/1998/04/no2_199804.grd.zip"
temp <- tempfile()
temp2 <- tempfile()
download.file(url, temp)
unzip(zipfile = temp, exdir = temp2)
d.9804<- raster(file.path(temp2, "no2_199804.grd"))
unlink(c(temp, temp2))

url <-"http://temis.nl/airpollution/no2col/data/gome/1998/05/no2_199805.grd.zip"
temp <- tempfile()
temp2 <- tempfile()
download.file(url, temp)
unzip(zipfile = temp, exdir = temp2)
d.9805 <- raster(file.path(temp2, "no2_199805.grd"))
unlink(c(temp, temp2))

url <-"http://temis.nl/airpollution/no2col/data/gome/1998/06/no2_199806.grd.zip"
temp <- tempfile()
temp2 <- tempfile()
download.file(url, temp)
unzip(zipfile = temp, exdir = temp2)
d.9806<- raster(file.path(temp2, "no2_199806.grd"))
unlink(c(temp, temp2))

url <-"http://temis.nl/airpollution/no2col/data/gome/1998/07/no2_199807.grd.zip"
temp <- tempfile()
temp2 <- tempfile()
download.file(url, temp)
unzip(zipfile = temp, exdir = temp2)
d.9807 <- raster(file.path(temp2, "no2_199807.grd"))
unlink(c(temp, temp2))

url <-"http://temis.nl/airpollution/no2col/data/gome/1998/08/no2_199808.grd.zip"
temp <- tempfile()
temp2 <- tempfile()
download.file(url, temp)
unzip(zipfile = temp, exdir = temp2)
d.9808 <- raster(file.path(temp2, "no2_199808.grd"))
unlink(c(temp, temp2))

url <-"http://temis.nl/airpollution/no2col/data/gome/1998/09/no2_199809.grd.zip"
temp <- tempfile()
temp2 <- tempfile()
download.file(url, temp)
unzip(zipfile = temp, exdir = temp2)
d.9809 <- raster(file.path(temp2, "no2_199809.grd"))
unlink(c(temp, temp2))

url <-"http://temis.nl/airpollution/no2col/data/gome/1998/10/no2_199810.grd.zip"
temp <- tempfile()
temp2 <- tempfile()
download.file(url, temp)
unzip(zipfile = temp, exdir = temp2)
d.9810<- raster(file.path(temp2, "no2_199810.grd"))
unlink(c(temp, temp2))

url <-"http://temis.nl/airpollution/no2col/data/gome/1998/11/no2_199811.grd.zip"
temp <- tempfile()
temp2 <- tempfile()
download.file(url, temp)
unzip(zipfile = temp, exdir = temp2)
d.9811<- raster(file.path(temp2, "no2_199811.grd"))
unlink(c(temp, temp2))

url <-"http://temis.nl/airpollution/no2col/data/gome/1998/12/no2_199812.grd.zip"
temp <- tempfile()
temp2 <- tempfile()
download.file(url, temp)
unzip(zipfile = temp, exdir = temp2)
d.9812<- raster(file.path(temp2, "no2_199812.grd"))
unlink(c(temp, temp2))


d.1998.stack<-stack(d.9802,d.9803,d.9804,d.9805,d.9806,d.9807,d.9808,d.9809,d.9810,d.9811,d.9812)
#save the data if you want to
#saveRDS(d.1998.stack,file="no2monthly1998.Rda")

#calculate the annual mean for 1998
d.1998<-mean(d.1998.stack,na.rm=TRUE)



## 1999

url <-"http://temis.nl/airpollution/no2col/data/gome/1999/01/no2_199901.grd.zip"
temp <- tempfile()
temp2 <- tempfile()
download.file(url, temp)
unzip(zipfile = temp, exdir = temp2)
d.9901 <- raster(file.path(temp2, "no2_199901.grd"))
unlink(c(temp, temp2))

url <-"http://temis.nl/airpollution/no2col/data/gome/1999/02/no2_199902.grd.zip"
temp <- tempfile()
temp2 <- tempfile()
download.file(url, temp)
unzip(zipfile = temp, exdir = temp2)
d.9902 <- raster(file.path(temp2, "no2_199902.grd"))
unlink(c(temp, temp2))

url <-"http://temis.nl/airpollution/no2col/data/gome/1999/03/no2_199903.grd.zip"
temp <- tempfile()
temp2 <- tempfile()
download.file(url, temp)
unzip(zipfile = temp, exdir = temp2)
d.9903 <- raster(file.path(temp2, "no2_199903.grd"))
unlink(c(temp, temp2))

url <-"http://temis.nl/airpollution/no2col/data/gome/1999/04/no2_199904.grd.zip"
temp <- tempfile()
temp2 <- tempfile()
download.file(url, temp)
unzip(zipfile = temp, exdir = temp2)
d.9904<- raster(file.path(temp2, "no2_199904.grd"))
unlink(c(temp, temp2))

url <-"http://temis.nl/airpollution/no2col/data/gome/1999/05/no2_199905.grd.zip"
temp <- tempfile()
temp2 <- tempfile()
download.file(url, temp)
unzip(zipfile = temp, exdir = temp2)
d.9905 <- raster(file.path(temp2, "no2_199905.grd"))
unlink(c(temp, temp2))

url <-"http://temis.nl/airpollution/no2col/data/gome/1999/06/no2_199906.grd.zip"
temp <- tempfile()
temp2 <- tempfile()
download.file(url, temp)
unzip(zipfile = temp, exdir = temp2)
d.9906<- raster(file.path(temp2, "no2_199906.grd"))
unlink(c(temp, temp2))

url <-"http://temis.nl/airpollution/no2col/data/gome/1999/07/no2_199907.grd.zip"
temp <- tempfile()
temp2 <- tempfile()
download.file(url, temp)
unzip(zipfile = temp, exdir = temp2)
d.9907 <- raster(file.path(temp2, "no2_199907.grd"))
unlink(c(temp, temp2))

url <-"http://temis.nl/airpollution/no2col/data/gome/1999/08/no2_199908.grd.zip"
temp <- tempfile()
temp2 <- tempfile()
download.file(url, temp)
unzip(zipfile = temp, exdir = temp2)
d.9908 <- raster(file.path(temp2, "no2_199908.grd"))
unlink(c(temp, temp2))

url <-"http://temis.nl/airpollution/no2col/data/gome/1999/09/no2_199909.grd.zip"
temp <- tempfile()
temp2 <- tempfile()
download.file(url, temp)
unzip(zipfile = temp, exdir = temp2)
d.9909 <- raster(file.path(temp2, "no2_199909.grd"))
unlink(c(temp, temp2))

url <-"http://temis.nl/airpollution/no2col/data/gome/1999/10/no2_199910.grd.zip"
temp <- tempfile()
temp2 <- tempfile()
download.file(url, temp)
unzip(zipfile = temp, exdir = temp2)
d.9910<- raster(file.path(temp2, "no2_199910.grd"))
unlink(c(temp, temp2))

url <-"http://temis.nl/airpollution/no2col/data/gome/1999/11/no2_199911.grd.zip"
temp <- tempfile()
temp2 <- tempfile()
download.file(url, temp)
unzip(zipfile = temp, exdir = temp2)
d.9911<- raster(file.path(temp2, "no2_199911.grd"))
unlink(c(temp, temp2))

url <-"http://temis.nl/airpollution/no2col/data/gome/1999/12/no2_199912.grd.zip"
temp <- tempfile()
temp2 <- tempfile()
download.file(url, temp)
unzip(zipfile = temp, exdir = temp2)
d.9912<- raster(file.path(temp2, "no2_199912.grd"))
unlink(c(temp, temp2))


d.1999.stack<-stack(d.9901,d.9902,d.9903,d.9904,d.9905,d.9906,d.9907,d.9908,d.9909,d.9910,d.9911,d.9912)

#save the data if you want to
#saveRDS(d.1999.stack,file="no2monthly1999.Rda")

#calculate the annual mean for 1999
d.1999<-mean(d.1999.stack,na.rm=TRUE)


## 2000

url <-"http://temis.nl/airpollution/no2col/data/gome/2000/01/no2_200001.grd.zip"
temp <- tempfile()
temp2 <- tempfile()
download.file(url, temp)
unzip(zipfile = temp, exdir = temp2)
d.0001 <- raster(file.path(temp2, "no2_200001.grd"))
unlink(c(temp, temp2))

url <-"http://temis.nl/airpollution/no2col/data/gome/2000/02/no2_200002.grd.zip"
temp <- tempfile()
temp2 <- tempfile()
download.file(url, temp)
unzip(zipfile = temp, exdir = temp2)
d.0002 <- raster(file.path(temp2, "no2_200002.grd"))
unlink(c(temp, temp2))

url <-"http://temis.nl/airpollution/no2col/data/gome/2000/03/no2_200003.grd.zip"
temp <- tempfile()
temp2 <- tempfile()
download.file(url, temp)
unzip(zipfile = temp, exdir = temp2)
d.0003 <- raster(file.path(temp2, "no2_200003.grd"))
unlink(c(temp, temp2))

url <-"http://temis.nl/airpollution/no2col/data/gome/2000/04/no2_200004.grd.zip"
temp <- tempfile()
temp2 <- tempfile()
download.file(url, temp)
unzip(zipfile = temp, exdir = temp2)
d.0004<- raster(file.path(temp2, "no2_200004.grd"))
unlink(c(temp, temp2))

url <-"http://temis.nl/airpollution/no2col/data/gome/2000/05/no2_200005.grd.zip"
temp <- tempfile()
temp2 <- tempfile()
download.file(url, temp)
unzip(zipfile = temp, exdir = temp2)
d.0005 <- raster(file.path(temp2, "no2_200005.grd"))
unlink(c(temp, temp2))

url <-"http://temis.nl/airpollution/no2col/data/gome/2000/06/no2_200006.grd.zip"
temp <- tempfile()
temp2 <- tempfile()
download.file(url, temp)
unzip(zipfile = temp, exdir = temp2)
d.0006<- raster(file.path(temp2, "no2_200006.grd"))
unlink(c(temp, temp2))

url <-"http://temis.nl/airpollution/no2col/data/gome/2000/07/no2_200007.grd.zip"
temp <- tempfile()
temp2 <- tempfile()
download.file(url, temp)
unzip(zipfile = temp, exdir = temp2)
d.0007 <- raster(file.path(temp2, "no2_200007.grd"))
unlink(c(temp, temp2))

url <-"http://temis.nl/airpollution/no2col/data/gome/2000/08/no2_200008.grd.zip"
temp <- tempfile()
temp2 <- tempfile()
download.file(url, temp)
unzip(zipfile = temp, exdir = temp2)
d.0008 <- raster(file.path(temp2, "no2_200008.grd"))
unlink(c(temp, temp2))

url <-"http://temis.nl/airpollution/no2col/data/gome/2000/09/no2_200009.grd.zip"
temp <- tempfile()
temp2 <- tempfile()
download.file(url, temp)
unzip(zipfile = temp, exdir = temp2)
d.0009 <- raster(file.path(temp2, "no2_200009.grd"))
unlink(c(temp, temp2))

url <-"http://temis.nl/airpollution/no2col/data/gome/2000/10/no2_200010.grd.zip"
temp <- tempfile()
temp2 <- tempfile()
download.file(url, temp)
unzip(zipfile = temp, exdir = temp2)
d.0010<- raster(file.path(temp2, "no2_200010.grd"))
unlink(c(temp, temp2))

url <-"http://temis.nl/airpollution/no2col/data/gome/2000/11/no2_200011.grd.zip"
temp <- tempfile()
temp2 <- tempfile()
download.file(url, temp)
unzip(zipfile = temp, exdir = temp2)
d.0011<- raster(file.path(temp2, "no2_200011.grd"))
unlink(c(temp, temp2))

url <-"http://temis.nl/airpollution/no2col/data/gome/2000/12/no2_200012.grd.zip"
temp <- tempfile()
temp2 <- tempfile()
download.file(url, temp)
unzip(zipfile = temp, exdir = temp2)
d.0012<- raster(file.path(temp2, "no2_200012.grd"))
unlink(c(temp, temp2))


d.2000.stack<-stack(d.0001,d.0002,d.0003,d.0004,d.0005,d.0006,d.0007,d.0008,d.0009,d.0010,d.0011,d.0012)

#save the data if you want to
#saveRDS(d.2000.stack,file="no2monthly2000.Rda")

#calculate the annual mean for 2000
d.2000<-mean(d.2000.stack,na.rm=TRUE)



## 2001

url <-"http://temis.nl/airpollution/no2col/data/gome/2001/01/no2_200101.grd.zip"
temp <- tempfile()
temp2 <- tempfile()
download.file(url, temp)
unzip(zipfile = temp, exdir = temp2)
d.0101 <- raster(file.path(temp2, "no2_200101.grd"))
unlink(c(temp, temp2))

url <-"http://temis.nl/airpollution/no2col/data/gome/2001/02/no2_200102.grd.zip"
temp <- tempfile()
temp2 <- tempfile()
download.file(url, temp)
unzip(zipfile = temp, exdir = temp2)
d.0102 <- raster(file.path(temp2, "no2_200102.grd"))
unlink(c(temp, temp2))

url <-"http://temis.nl/airpollution/no2col/data/gome/2001/03/no2_200103.grd.zip"
temp <- tempfile()
temp2 <- tempfile()
download.file(url, temp)
unzip(zipfile = temp, exdir = temp2)
d.0103 <- raster(file.path(temp2, "no2_200103.grd"))
unlink(c(temp, temp2))

url <-"http://temis.nl/airpollution/no2col/data/gome/2001/04/no2_200104.grd.zip"
temp <- tempfile()
temp2 <- tempfile()
download.file(url, temp)
unzip(zipfile = temp, exdir = temp2)
d.0104<- raster(file.path(temp2, "no2_200104.grd"))
unlink(c(temp, temp2))

url <-"http://temis.nl/airpollution/no2col/data/gome/2001/05/no2_200105.grd.zip"
temp <- tempfile()
temp2 <- tempfile()
download.file(url, temp)
unzip(zipfile = temp, exdir = temp2)
d.0105 <- raster(file.path(temp2, "no2_200105.grd"))
unlink(c(temp, temp2))

url <-"http://temis.nl/airpollution/no2col/data/gome/2001/06/no2_200106.grd.zip"
temp <- tempfile()
temp2 <- tempfile()
download.file(url, temp)
unzip(zipfile = temp, exdir = temp2)
d.0106<- raster(file.path(temp2, "no2_200106.grd"))
unlink(c(temp, temp2))

url <-"http://temis.nl/airpollution/no2col/data/gome/2001/07/no2_200107.grd.zip"
temp <- tempfile()
temp2 <- tempfile()
download.file(url, temp)
unzip(zipfile = temp, exdir = temp2)
d.0107 <- raster(file.path(temp2, "no2_200107.grd"))
unlink(c(temp, temp2))

url <-"http://temis.nl/airpollution/no2col/data/gome/2001/08/no2_200108.grd.zip"
temp <- tempfile()
temp2 <- tempfile()
download.file(url, temp)
unzip(zipfile = temp, exdir = temp2)
d.0108 <- raster(file.path(temp2, "no2_200108.grd"))
unlink(c(temp, temp2))

url <-"http://temis.nl/airpollution/no2col/data/gome/2001/09/no2_200109.grd.zip"
temp <- tempfile()
temp2 <- tempfile()
download.file(url, temp)
unzip(zipfile = temp, exdir = temp2)
d.0109 <- raster(file.path(temp2, "no2_200109.grd"))
unlink(c(temp, temp2))

url <-"http://temis.nl/airpollution/no2col/data/gome/2001/10/no2_200110.grd.zip"
temp <- tempfile()
temp2 <- tempfile()
download.file(url, temp)
unzip(zipfile = temp, exdir = temp2)
d.0110<- raster(file.path(temp2, "no2_200110.grd"))
unlink(c(temp, temp2))

url <-"http://temis.nl/airpollution/no2col/data/gome/2001/11/no2_200111.grd.zip"
temp <- tempfile()
temp2 <- tempfile()
download.file(url, temp)
unzip(zipfile = temp, exdir = temp2)
d.0111<- raster(file.path(temp2, "no2_200111.grd"))
unlink(c(temp, temp2))

url <-"http://temis.nl/airpollution/no2col/data/gome/2001/12/no2_200112.grd.zip"
temp <- tempfile()
temp2 <- tempfile()
download.file(url, temp)
unzip(zipfile = temp, exdir = temp2)
d.0112<- raster(file.path(temp2, "no2_200112.grd"))
unlink(c(temp, temp2))


d.2001.stack<-stack(d.0101,d.0102,d.0103,d.0104,d.0105,d.0106,d.0107,d.0108,d.0109,d.0110,d.0111,d.0112)

#save the data if you want to
#saveRDS(d.2001.stack,file="no2monthly2001.Rda")

#calculate the annual mean for 2000
d.2001<-mean(d.2001.stack,na.rm=TRUE)


## 2002

url <-"http://temis.nl/airpollution/no2col/data/gome/2002/01/no2_200201.grd.zip"
temp <- tempfile()
temp2 <- tempfile()
download.file(url, temp)
unzip(zipfile = temp, exdir = temp2)
d.0201 <- raster(file.path(temp2, "no2_200201.grd"))
unlink(c(temp, temp2))

url <-"http://temis.nl/airpollution/no2col/data/gome/2002/02/no2_200202.grd.zip"
temp <- tempfile()
temp2 <- tempfile()
download.file(url, temp)
unzip(zipfile = temp, exdir = temp2)
d.0202 <- raster(file.path(temp2, "no2_200202.grd"))
unlink(c(temp, temp2))

url <-"http://temis.nl/airpollution/no2col/data/gome/2002/03/no2_200203.grd.zip"
temp <- tempfile()
temp2 <- tempfile()
download.file(url, temp)
unzip(zipfile = temp, exdir = temp2)
d.0203 <- raster(file.path(temp2, "no2_200203.grd"))
unlink(c(temp, temp2))

url <-"http://temis.nl/airpollution/no2col/data/gome/2002/04/no2_200204.grd.zip"
temp <- tempfile()
temp2 <- tempfile()
download.file(url, temp)
unzip(zipfile = temp, exdir = temp2)
d.0204<- raster(file.path(temp2, "no2_200204.grd"))
unlink(c(temp, temp2))

url <-"http://temis.nl/airpollution/no2col/data/gome/2002/05/no2_200205.grd.zip"
temp <- tempfile()
temp2 <- tempfile()
download.file(url, temp)
unzip(zipfile = temp, exdir = temp2)
d.0205 <- raster(file.path(temp2, "no2_200205.grd"))
unlink(c(temp, temp2))

url <-"http://temis.nl/airpollution/no2col/data/gome/2002/06/no2_200206.grd.zip"
temp <- tempfile()
temp2 <- tempfile()
download.file(url, temp)
unzip(zipfile = temp, exdir = temp2)
d.0206<- raster(file.path(temp2, "no2_200206.grd"))
unlink(c(temp, temp2))

url <-"http://temis.nl/airpollution/no2col/data/gome/2002/07/no2_200207.grd.zip"
temp <- tempfile()
temp2 <- tempfile()
download.file(url, temp)
unzip(zipfile = temp, exdir = temp2)
d.0207 <- raster(file.path(temp2, "no2_200207.grd"))
unlink(c(temp, temp2))

url <-"http://temis.nl/airpollution/no2col/data/gome/2002/08/no2_200208.grd.zip"
temp <- tempfile()
temp2 <- tempfile()
download.file(url, temp)
unzip(zipfile = temp, exdir = temp2)
d.0208 <- raster(file.path(temp2, "no2_200208.grd"))
unlink(c(temp, temp2))

url <-"http://temis.nl/airpollution/no2col/data/gome/2002/09/no2_200209.grd.zip"
temp <- tempfile()
temp2 <- tempfile()
download.file(url, temp)
unzip(zipfile = temp, exdir = temp2)
d.0209 <- raster(file.path(temp2, "no2_200209.grd"))
unlink(c(temp, temp2))

url <-"http://temis.nl/airpollution/no2col/data/gome/2002/10/no2_200210.grd.zip"
temp <- tempfile()
temp2 <- tempfile()
download.file(url, temp)
unzip(zipfile = temp, exdir = temp2)
d.0210<- raster(file.path(temp2, "no2_200210.grd"))
unlink(c(temp, temp2))

url <-"http://temis.nl/airpollution/no2col/data/gome/2002/11/no2_200211.grd.zip"
temp <- tempfile()
temp2 <- tempfile()
download.file(url, temp)
unzip(zipfile = temp, exdir = temp2)
d.0211<- raster(file.path(temp2, "no2_200211.grd"))
unlink(c(temp, temp2))

url <-"http://temis.nl/airpollution/no2col/data/gome/2002/12/no2_200212.grd.zip"
temp <- tempfile()
temp2 <- tempfile()
download.file(url, temp)
unzip(zipfile = temp, exdir = temp2)
d.0212<- raster(file.path(temp2, "no2_200212.grd"))
unlink(c(temp, temp2))


d.2002.stack<-stack(d.0201,d.0202,d.0203,d.0204,d.0205,d.0206,d.0207,d.0208,d.0209,d.0210,d.0211,d.0212)

#save the data if you want to
#saveRDS(d.2002.stack,file="no2monthly2002.Rda")

#calculate the annual mean for 2002
d.2002<-mean(d.2002.stack,na.rm=TRUE)


#calculate 5-year average 1998-2002
d<-mean(stack(d.1998,d.1999,d.2000,d.2001,d.2002),na.rm=TRUE)

projection(d) <- "+proj=longlat +datum=WGS84 +ellps=WGS84"

#### Plot the Data for Ontario ####

#get the shapefile
canada<-getData("GADM",country="CAN",level=1)
ontario<-canada[canada$NAME_1=="Ontario",]

d.on<-mask(d,ontario)

plot(d.on,ylim=c(40,60),xlim=c(-100,-70),xlab="lon",ylab="lat",main="Troposheric NO2 column: 1998-2002")
plot(ontario,add=TRUE,lwd=2)

