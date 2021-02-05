library(pheatmap)


mat <- read.table('deg_sl_tar.txt')

pheatmap(mat,cluster_cols=F,scale='row',show_colnames=F,show_rownames=F,border_color='NA')



