library(pheatmap)

mat <- read.table('conservation.txt',header=T,row.names=1,sep='\t')

col <- colorRampPalette(c('azure2','blue'))(100)

pheatmap(mat,cluster_rows=F,cluster_cols=F,cellwidth=20,cellheight=20,color=col)


