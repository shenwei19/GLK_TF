library(pheatmap)
library(RColorBrewer)


mat <- read.table('enzyme_score_mat.txt',row.names=1)

pheatmap(t(mat),cluster_cols=F,cluster_rows=F,cellwidth=10,cellheight=10,color=brewer.pal(100,"Reds"))


