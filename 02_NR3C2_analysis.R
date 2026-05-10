library(GEOquery)
gse1 <- getGEO("GSE307377", GSEMatrix = TRUE)
pdata1 <- pData(gse1[[1]])
View(pdata1)
pdata1 <- pData(gse1[[1]])
View(pdata1)
gse1[[1]]$title
group1 <- c("young", "young", "old", "old", "old", "young", "old", "young", "old")
exprs1 <- exprs(gse1[[1]])
dim(exprs1)
exprs1 <- exprs(gse1[[1]])
dim(exprs1)
getGEOSuppFiles("GSE307377")
list.files("GSE307377")
counts1 <- read.table("GSE307377/GSE307377_raw.txt.gz", 
                      header = TRUE, 
                      row.names = 1)
dim(counts1)
counts1 <- read.table("GSE307377/GSE307377_raw.txt.gz", header = TRUE, row.names = 1)
counts1 <- read.table("GSE307377/GSE307377_raw.txt.gz", 
                      header = TRUE, 
                      row.names = 1,
                      sep = "\t")
readLines("GSE307377/GSE307377_raw.txt.gz", n = 3)
counts1 <- read.table("GSE307377/GSE307377_raw.txt.gz", header = TRUE, row.names = 1, sep = "\t", comment.char = "")
counts1 <- read.table("GSE307377/GSE307377_raw.txt.gz", header = TRUE, row.names = 1, sep = "\t", comment.char = "")
counts1 <- counts1[, 9:ncol(counts1)]
dim(counts1)
grep("NR3C2", rownames(counts1))
head(rownames(counts1), 20)
grep("NM_000901", rownames(counts1))
grep("NM_000901.5", rownames(counts1), value = TRUE)
grep("NM_0009", rownames(counts1), value = TRUE)
tpm1 <- read.table("GSE307377/GSE307377_tpm.txt.gz", 
                   header = TRUE, 
                   row.names = 1,
                   sep = "\t",
                   comment.char = "")

grep("NM_000901", rownames(tpm1), value = TRUE)
tpm1 <- read.table("GSE307377/GSE307377_tpm.txt.gz", header = TRUE, row.names = 1, sep = "\t", comment.char = "")
grep("NM_000901", rownames(tpm1), value = TRUE)
gse2 <- getGEO("GSE191055", GSEMatrix = TRUE)
getGEOSuppFiles("GSE191055")
list.files("GSE191055")
install.packages("readxl")
library(readxl)
counts2 <- read_excel("GSE191055/GSE191055_ye_ye_bowtie.xlsx")
head(counts2)
library(readxl)
counts2 <- read_excel("GSE191055/GSE191055_ye_ye_bowtie.xlsx")
head(counts2)
counts2[counts2$gene == "NR3C2", ]
list.files("GSE191055")
head(counts2, 3)
pdata2 <- pData(gse2[[1]])
View(pdata2)
pdata2 <- pData(gse2[[1]])
View(pdata2)
NR3C2_dataset2 <- counts2[counts2$gene == "NR3C2", ]
NR3C2_dataset2
NR3C2_dataset2 <- counts2[counts2$gene == "NR3C2", 
NR3C2_dataset2
write.csv(NR3C2_dataset2, "NR3C2_GSE191055_result.csv", row.names = FALSE)
deg2 <- read_excel("GSE191055/GSE191055_gene.P27_vs_P4.xlsx")
deg2[deg2$gene == "NR3C2", ]
colnames(deg2)
deg2[deg2$external_gene_name == "NR3C2", ]
library(ggplot2)
NR3C2_plot <- data.frame(
  group = c("Young", "Old"),
  log2FC = c(0, -0.37)
)

ggplot(NR3C2_plot, aes(x = group, y = log2FC, fill = group)) +
  geom_bar(stat = "identity") +
  theme_classic() +
  labs(title = "NR3C2 Expression: Young vs Old Skin",
       y = "log2 Fold Change",
       x = "Group")
library(ggplot2)
NR3C2_plot <- data.frame(
  group = c("Young", "Old"),
  log2FC = c(0, -0.37)
)
library(ggplot2)
NR3C2_plot <- data.frame(
  group = c("Young", "Old"),
  log2FC = c(0, -0.37)
)
ggplot(NR3C2_plot, aes(x = group, y = log2FC, fill = group)) +
  geom_bar(stat = "identity") +
  theme_classic() +
  labs(title = "NR3C2 Expression: Young vs Old Skin",
       y = "log2 Fold Change",
       x = "Group")
ggsave("NR3C2_GSE191055_plot.png", width = 6, height = 4)
NR3C2_plot2 <- data.frame(
  group = c("Young", "Old"),
  expression = c(66.8 + 66.8*0.37, 66.8)
)

ggplot(NR3C2_plot2, aes(x = group, y = expression, fill = group)) +
  geom_bar(stat = "identity") +
  theme_classic() +
  labs(title = "NR3C2 Expression: Young vs Old Skin",
       y = "Base Mean Expression",
       x = "Group") +
  scale_fill_manual(values = c("Young" = "steelblue", "Old" = "tomato"))
NR3C2_plot2 <- data.frame(
  group = c("Young", "Old"),
  expression = c(66.8 + 66.8*0.37, 66.8)
)
ggplot(NR3C2_plot2, aes(x = group, y = expression, fill = group)) +
  geom_bar(stat = "identity") +
  theme_classic() +
  labs(title = "NR3C2 Expression: Young vs Old Skin",
       y = "Base Mean Expression",
       x = "Group") +
  scale_fill_manual(values = c("Young" = "steelblue", "Old" = "tomato"))
grep("NR3C2", counts1[,8], value = TRUE)
head(counts1[,8], 20)
head(counts1, 3)
counts1_full <- read.table("GSE307377/GSE307377_raw.txt.gz",
                           header = TRUE,
                           row.names = 1,
                           sep = "\t",
                           comment.char = "")
NR3C2_row <- grep("NR3C2", counts1_full[,7], value = FALSE)
NR3C2_row
NR3C2_row <- grep("NR3C2", counts1_full[,7], value = FALSE)
NR3C2_row
counts1_full[1917, ]
NR3C2_row <- grep("NR3C2\\|", counts1_full[,7], value = FALSE)
NR3C2_row
head(counts1_full[,7], 5)
NR3C2_row <- grep("^NR3C2\\|", counts1_full[,7], value = FALSE)
NR3C2_row
counts1_full[1917, 7]
raw_lines <- readLines("GSE307377/GSE307377_raw.txt.gz")
NR3C2_line <- grep("^NM_000901", raw_lines)
NR3C2_line
raw_lines <- readLines("GSE307377/GSE307377_raw.txt.gz")
NR3C2_line <- grep("^NM_000901", raw_lines)
raw_lines <- readLines("GSE307377/GSE307377_raw.txt.gz")
NR3C2_line <- grep("^NM_000901", raw_lines)
NR3C2_line
NR3C2_line <- grep("^NM_000901", raw_lines)
NR3C2_line
raw_lines[5219]
colnames(counts1)
counts1["NM_000901", ]
young_expr1 <- c(109, 57.5, 62.5, 44.5)
old_expr1 <- c(57.5, 31, 57.5, 54.5)
mean(young_expr1)
mean(old_expr1)
young_expr1 <- c(109, 57.5, 62.5, 44.5)
old_expr1 <- c(57.5, 31, 57.5, 54.5)

plot_data1 <- data.frame(
  expression = c(young_expr1, old_expr1),
  group = c("Young","Young","Young","Young","Old","Old","Old","Old")
)
ggplot(plot_data1, aes(x = group, y = expression, fill = group)) +
  geom_boxplot() +
  theme_classic() +
  labs(title = "NR3C2 Expression: Young vs Old Skin (GSE307377)",
       y = "Expression",
       x = "Group") +
  scale_fill_manual(values = c("Young" = "steelblue", "Old" = "tomato"))
ggsave("NR3C2_GSE307377_plot.png", width = 6, height = 4)
