setRepositories(ind = 1:2)

install_packages <- c(
    "Seurat",
    "circlize",
    "gridExtra",
    "statmod",
    "ggalt",
    "magick",
    "sctransform",
    "Rcpp",
    "ggpubr",
    "SoupX",
    "metap",
    "glmnet",
    "RCircos",
    "magrittr",
    "stringr",
    "ggplot2",
    "pROC",
    "igraph",
    "RColorBrewer",
    "MetBrewer",
    "VennDiagram",
    "ggalluvial",
    "pheatmap",
    "ggExtra",
    "foreach",
    "doParallel"
)

bioc_packages <- c(
    "edgeR",
    "DESeq2",
    "limma",
    "PCAtools",
    "MAST",
    "org.Hs.eg.db",
    "dittoSeq",
    "scater",
    "glmGamPoi",
    "multtest",
    "clusterProfiler",
    "glmGamPoi"
)

install.packages(install_packages)
BiocManager::install(bioc_packages)

setRepositories(ind = 1:3, addURLs = c('https://satijalab.r-universe.dev', 'https://bnprks.r-universe.dev/'))
install.packages(c("BPCells", "presto", "glmGamPoi"))
install.packages('Signac')
devtools::install_github("satijalab/seurat-data", quiet = TRUE)
devtools::install_github("satijalab/azimuth", quiet = TRUE)
devtools::install_github("satijalab/seurat-wrappers", quiet = TRUE)



IRkernel::installspec(name = "VSCODE_R", displayname = "VSCODE_R", user = FALSE)
