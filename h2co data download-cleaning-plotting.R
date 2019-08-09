###This code will download a global 0.5x0.5 degree grid of satellite data from http://h2co.aeronomie.be/

#create a 360x720x5 array, 360 are the number of latitudes in the grid and 720 are the number of longitudes, 5 is the number of months we are taking (May-Sep, the ozone season)
dat.98<-rep(NaN,(360*720*5))
dim(dat.98)<-c(360,720,5)

#download the data for 1998
dat.98[,,1]<-as.matrix(read.table("http://h2co.aeronomie.be/ch2o/data/gome/images_based/1998/05/GOMECH2O_Grid_360x720_199805.dat", header = FALSE,skip=7))
dat.98[,,2]<-as.matrix(read.table("http://h2co.aeronomie.be/ch2o/data/gome/images_based/1998/06/GOMECH2O_Grid_360x720_199806.dat", header = FALSE,skip=7))
dat.98[,,3]<-as.matrix(read.table("http://h2co.aeronomie.be/ch2o/data/gome/images_based/1998/07/GOMECH2O_Grid_360x720_199807.dat", header = FALSE,skip=7))
dat.98[,,4]<-as.matrix(read.table("http://h2co.aeronomie.be/ch2o/data/gome/images_based/1998/08/GOMECH2O_Grid_360x720_199808.dat", header = FALSE,skip=7))
dat.98[,,5]<-as.matrix(read.table("http://h2co.aeronomie.be/ch2o/data/gome/images_based/1998/09/GOMECH2O_Grid_360x720_199809.dat", header = FALSE,skip=7))

#save this array of 1998 data if you want
#saveRDS(dat.98,file="h2comonthly1998.Rda")
##to load this data file after saving use readRDS()
#dat.98<-readRDS("h2comonthly1998.Rda")


#repeat the process for 1999 to 2002
dat.99<-rep(NaN,(360*720*5))
dim(dat.99)<-c(360,720,5)

dat.99[,,1]<-as.matrix(read.table("http://h2co.aeronomie.be/ch2o/data/gome/images_based/1999/05/GOMECH2O_Grid_360x720_199905.dat", header = FALSE,skip=7))
dat.99[,,2]<-as.matrix(read.table("http://h2co.aeronomie.be/ch2o/data/gome/images_based/1999/06/GOMECH2O_Grid_360x720_199906.dat", header = FALSE,skip=7))
dat.99[,,3]<-as.matrix(read.table("http://h2co.aeronomie.be/ch2o/data/gome/images_based/1999/07/GOMECH2O_Grid_360x720_199907.dat", header = FALSE,skip=7))
dat.99[,,4]<-as.matrix(read.table("http://h2co.aeronomie.be/ch2o/data/gome/images_based/1999/08/GOMECH2O_Grid_360x720_199908.dat", header = FALSE,skip=7))
dat.99[,,5]<-as.matrix(read.table("http://h2co.aeronomie.be/ch2o/data/gome/images_based/1999/09/GOMECH2O_Grid_360x720_199909.dat", header = FALSE,skip=7))
#saveRDS(dat.99,file="h2comonthly1999.Rda")


dat.00<-rep(NaN,(360*720*5))
dim(dat.00)<-c(360,720,5)

dat.00[,,1]<-as.matrix(read.table("http://h2co.aeronomie.be/ch2o/data/gome/images_based/2000/05/GOMECH2O_Grid_360x720_200005.dat", header = FALSE,skip=7))
dat.00[,,2]<-as.matrix(read.table("http://h2co.aeronomie.be/ch2o/data/gome/images_based/2000/06/GOMECH2O_Grid_360x720_200006.dat", header = FALSE,skip=7))
dat.00[,,3]<-as.matrix(read.table("http://h2co.aeronomie.be/ch2o/data/gome/images_based/2000/07/GOMECH2O_Grid_360x720_200007.dat", header = FALSE,skip=7))
dat.00[,,4]<-as.matrix(read.table("http://h2co.aeronomie.be/ch2o/data/gome/images_based/2000/08/GOMECH2O_Grid_360x720_200008.dat", header = FALSE,skip=7))
dat.00[,,5]<-as.matrix(read.table("http://h2co.aeronomie.be/ch2o/data/gome/images_based/2000/09/GOMECH2O_Grid_360x720_200009.dat", header = FALSE,skip=7))
#saveRDS(dat.00,file="h2comonthly2000.Rda")


dat.01<-rep(NaN,(360*720*5))
dim(dat.01)<-c(360,720,5)


dat.01[,,1]<-as.matrix(read.table("http://h2co.aeronomie.be/ch2o/data/gome/images_based/2001/05/GOMECH2O_Grid_360x720_200105.dat", header = FALSE,skip=7))
dat.01[,,2]<-as.matrix(read.table("http://h2co.aeronomie.be/ch2o/data/gome/images_based/2001/06/GOMECH2O_Grid_360x720_200106.dat", header = FALSE,skip=7))
dat.01[,,3]<-as.matrix(read.table("http://h2co.aeronomie.be/ch2o/data/gome/images_based/2001/07/GOMECH2O_Grid_360x720_200107.dat", header = FALSE,skip=7))
dat.01[,,4]<-as.matrix(read.table("http://h2co.aeronomie.be/ch2o/data/gome/images_based/2001/08/GOMECH2O_Grid_360x720_200108.dat", header = FALSE,skip=7))
dat.01[,,5]<-as.matrix(read.table("http://h2co.aeronomie.be/ch2o/data/gome/images_based/2001/09/GOMECH2O_Grid_360x720_200109.dat", header = FALSE,skip=7))
#saveRDS(dat.01,file="h2comonthly2001.Rda")


dat.02<-rep(NaN,(360*720*5))
dim(dat.02)<-c(360,720,5)

dat.02[,,1]<-as.matrix(read.table("http://h2co.aeronomie.be/ch2o/data/gome/images_based/2002/05/GOMECH2O_Grid_360x720_200205.dat", header = FALSE,skip=7))
dat.02[,,2]<-as.matrix(read.table("http://h2co.aeronomie.be/ch2o/data/gome/images_based/2002/06/GOMECH2O_Grid_360x720_200206.dat", header = FALSE,skip=7))
dat.02[,,3]<-as.matrix(read.table("http://h2co.aeronomie.be/ch2o/data/gome/images_based/2002/07/GOMECH2O_Grid_360x720_200207.dat", header = FALSE,skip=7))
dat.02[,,4]<-as.matrix(read.table("http://h2co.aeronomie.be/ch2o/data/gome/images_based/2002/08/GOMECH2O_Grid_360x720_200208.dat", header = FALSE,skip=7))
dat.02[,,5]<-as.matrix(read.table("http://h2co.aeronomie.be/ch2o/data/gome/images_based/2002/09/GOMECH2O_Grid_360x720_200209.dat", header = FALSE,skip=7))
#saveRDS(dat.02,file="h2comonthly2002.Rda")


#create 3D array to store May-Sep means 1998-2002
d.ann<-rep(NaN,(360*720*5))
dim(d.ann)<-c(360,720,5)

dat<-list(dat.98,dat.99,dat.00,dat.01,dat.02)


#calculate the ozone season(5 month) mean for all 5-years
B<-360;J<-720;K<-5


for(k in 1:K){
	for (b in 1:B){
		for(j in 1:J){
			x<-dat[[k]]
			d.ann[b,j,k]<-mean(x[b,j,],na.rm=T)
		}}}

#5year average
d.final<-matrix(NaN,B,J)
for (b in 1:B){
		for(j in 1:J){
			d.final[b,j]<-mean(d.ann[b,j,],na.rm=T)
		}}

#flip axis
d<-d.final[nrow(d.final):1, ] 

#saveRDS(d,file="h2co.Rda")
#d<-readRDS("h2co.Rda")


### Graphing #####
##to graph, we need a few packages

#install.packages("rworldmap")
#install.packages("RColorBrewer")
#install.packages("raster")
library(rworldmap)
library(RColorBrewer)
library(raster)

#the rworldmap() package makes it really easy to plot our data on a world map and to zoom in on a specific continent
mapGriddedData(t(d),mapRegion="world",numCats=11,catMethod="diverging",colourPalette=rev(brewer.pal(11,"Spectral")))
mapGriddedData(t(d),mapRegion="north america",numCats=11,catMethod="diverging",colourPalette=rev(brewer.pal(11,"Spectral")))

##the world maps are OK, but my research project is specific to Ontario. So I need a map of Ontario. We need to turn the data into raster format
#the data is currently in matrix format, but is easily turned into raster format. Let's convert to raster format with lat and lon
d.r<-raster(d,xmn=-180, xmx=180, ymn=-90, ymx=90)
projection(d.r) <- "+proj=longlat +datum=WGS84 +ellps=WGS84"

#get the Ontario shapefile
canada<-getData("GADM",country="CAN",level=1)
ontario<-canada[canada$NAME_1=="Ontario",]

#Use the Ontario shapefile to restrict our raster to just Ontario
d.r.sub<-mask(d.r,ontario)

#plot the two files
plot(d.r.sub,ylim=c(40,60),xlim=c(-100,-70),xlab="lon",ylab="lat",main="May-Sep H2CO: 1998-2002")
plot(ontario,add=TRUE,lwd=2)
