datos=read.table(file.choose(),header=T,sep=';')
datos=transform(datos,Date=as.Date(Date,format='%d/%m/%Y'))
datos=subset(datos,Date>as.Date('2007-01-31'))
datos=subset(datos,Date<as.Date('2007-02-03'))
GAP=as.numeric(datos$Global_active_power)
png(file='plot1.png')
hist(GAP,col='red',xlab='Global_active_power',main='Global_active_power')

