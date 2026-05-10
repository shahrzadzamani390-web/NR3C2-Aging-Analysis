library(GEOquery)
gse3 <- getGEO("GSE262932", GSEMatrix = TRUE)
gse3 <- getGEO("GSE262932", GSEMatrix = TRUE, destdir = tempdir())
options('download.file.method' = 'curl')
gse3 <- getGEO("GSE262932", GSEMatrix = TRUE)
gse3[[1]]$title
pdata3 <- pData(gse3[[1]])
View(pdata3)
pdata3 <- pData(gse3[[1]])
View(pdata3)
getGEOSuppFiles("GSE262932")
list.files("GSE262932")
counts3 <- read.table("GSE262932/GSE262932_Processed_data_files.txt.gz",
                      header = TRUE,
                      row.names = 1,
                      sep = "\t")
dim(counts3)
head(rownames(counts3), 20)
grep("ENSG00000151623", rownames(counts3), value = TRUE)
NR3C2_counts3 <- counts3["ENSG00000151623", ]
NR3C2_counts3
NR3C2_counts3 <- counts3["ENSG00000151623", ]
NR3C2_counts3
young_expr <- c(0.7398868, 0.943114, 0.9412575)
old_expr <- c(0.7371745, 0.7188331, 0.6933947)

mean(young_expr)
mean(old_expr)
young_expr <- c(0.7398868, 0.943114, 0.9412575)
old_expr <- c(0.7371745, 0.7188331, 0.6933947)
mean(young_expr)
mean(old_expr)
library(ggplot2)

plot_data3 <- data.frame(
  expression = c(young_expr, old_expr),
  group = c("Young", "Young", "Young", "Old", "Old", "Old")
)

ggplot(plot_data3, aes(x = group, y = expression, fill = group)) +
  geom_boxplot() +
  theme_classic() +
  labs(title = "NR3C2 Expression: Children vs Elderly (GSE262932)",
       y = "Expression",
       x = "Group") +
  scale_fill_manual(values = c("Young" = "steelblue", "Old" = "tomato"))
library(ggplot2)
plot_data3 <- data.frame(
  expression = c(young_expr, old_expr),
  group = c("Young", "Young", "Young", "Old", "Old", "Old")
)
ggplot(plot_data3, aes(x = group, y = expression, fill = group)) +
  geom_boxplot() +
  theme_classic() +
  labs(title = "NR3C2 Expression: Children vs Elderly (GSE262932)",
       y = "Expression",
       x = "Group") +
  scale_fill_manual(values = c("Young" = "steelblue", "Old" = "tomato"))
ggsave("NR3C2_GSE262932_plot.png", width = 6, height = 4)
write.csv(data.frame(
  Dataset = "GSE262932",
  Young_mean = mean(young_expr),
  Old_mean = mean(old_expr)
), "NR3C2_GSE262932_result.csv", row.names = FALSE)
