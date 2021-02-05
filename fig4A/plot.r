library(ggplot2)
library(dplyr)
library(wesanderson)

mat <- read.table('sl_group_score.txt',header=T)

library(ggpubr)

my_com <- list(c('5','1'))

data_summary <- function(x) {
	m <- mean(x)
	ymin <- m-sd(x)
	ymax <- m+sd(x)
	return(c(y=m,ymin=ymin,ymax=ymax))
}


ggplot(mat,aes(as.factor(Group),log10(Score),fill=as.factor(Group)))+geom_violin(trim=FALSE)+scale_fill_manual(values=wes_palette(n=5,name='Cavalcanti1'))+stat_summary(fun.data=data_summary)+theme_bw()+stat_compare_means(label.y=5.5,label.x=1)+stat_compare_means(comparisons=my_com,label='p.signif',label.y=5)


