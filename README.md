# Hello-friends
##First plot
datos=read.table(file.choose(),header=T,sep=';')
datos=transform(datos,Date=as.Date(Date,format='%d/%m/%Y'))
datos=subset(datos,Date>as.Date('2007-01-31')
datos=subset(datos,Date<as.Date('2007-02-03')
GAP=as.numeric(datos$Global_active_power)
png(file='plot1.png')
hist(GAP,col='red',xlab='Global_active_power',main='Global_active_power')
##Second plot
x=paste(datos$Date,datos$Time)
time=strp(x,format='%d/%m/%Y %H:%M:%S')
png(file='plot2.png')
plot(time,datos2$Global_active_power,type='l')

##Third plot
png(file='plot.3')
plot(time,datos2$Sub_metering_1,type='l',col='Black')
lines(time,datos2$Sub_metering_2,type='l',col='red')
lines(time,datos2$Sub_metering_3,type='l',col='blue')
legend('topright',lty=1,col=c('Black','Blue','Red'),legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'))
##Fourth plot
png(file='plot4.png')
par(mfrow=c(2,2))
plot(time,datos2$Global_active_power,type='l')
plot(time,datos2$Voltage,type='l')
plot(time,datos2$Sub_metering_1,type='l',col='Black')
lines(time,datos2$Sub_metering_2,type='l',col='red')
lines(time,datos2$Sub_metering_3,type='l',col='blue')
legend('topright',lty=1,col=c('Black','Blue','Red'),legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),cex=.3)
plot(time,datos2$Global_reactive_power,type='l')
