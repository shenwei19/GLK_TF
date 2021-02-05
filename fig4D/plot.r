library(ggplot2)
library(gridExtra)


mat <- read.table('sl_mat.txt',header=T)

mat$GO_category <- factor(mat$GO_category,levels=c('PS/tetrapyrrole_synthesis','Other'))

main <- ggplot(mat,aes(fc,zscore,shape=Group,color=GO_category))+geom_point(size=2,alpha=0.8)+theme_bw()+scale_color_manual(values=c('orange','grey'))+geom_vline(xintercept=c(-1,1),color='red',linetype='dashed')+xlim(c(-9,9))+ylim(c(-2.3,3))+scale_shape_manual(values=c(2,16))+theme(panel.grid=element_blank())


ydens <- ggplot(mat,aes(zscore,fill=Group))+geom_density(alpha=0.5)+scale_fill_manual(values=c('darkblue','aquamarine4'))+theme_bw()+coord_flip()+xlim(c(-2.3,3))


grid.arrange(main,ydens,ncol=2)




