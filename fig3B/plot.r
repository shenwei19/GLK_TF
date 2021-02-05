library('ggplot2')
library(wesanderson)


mat <- read.table('stat.txt',header=T,sep='\t')

mat$Species <- factor(mat$Species,levels=c('Atha','Nben','Slyc','Osat','Zmay'))

mat$GO <- factor(mat$GO,levels=unique(as.vector(mat[order(mat$p_value),]$GO)))

ggplot(mat,aes(Species,GO,size=Number,fill=-log10(p_value)))+geom_point(shape=21)+theme_bw()+scale_size(range=c(1,10))+scale_fill_gradientn(colours=wes_palette(20,name='Zissou1',type='continuous'))


