library(GEOquery)
gse4 <- getGEO("GSE263566", GSEMatrix = TRUE)
gse4[[1]]$title
getGEOSuppFiles("GSE263566")
getGEOSuppFiles("GSE263566")
list.files("GSE263566")
counts4 <- read.csv("GSE263566/GSE263566_ageingRNAcounts.csv.gz",
                    header = TRUE,
                    row.names = 1)
dim(counts4)
grep("NR3C2", rownames(counts4), value = TRUE)
head(rownames(counts4), 20)
grep("^4306$", rownames(counts4), value = TRUE)
NR3C2_counts4 <- counts4["4306", ]
NR3C2_counts4
young_expr4 <- c(1772, 1580, 2380, 1405, 1010, 1993, 1693, 2210)
old_expr4 <- c(271, 1662, 2784, 2882, 2346, 1579, 1954, 2223)
mean(young_expr4)
mean(old_expr4)
pdata4 <- pData(gse4[[1]])
View(pdata4)
pdata4 <- pData(gse4[[1]])
pdata4 <- pData(gse4[[1]])
plot_data4 <- data.frame(
  expression = c(young_expr4, old_expr4),
  group = c("Young","Young","Young","Young","Young","Young","Young","Young",
            "Old","Old","Old","Old","Old","Old","Old","Old")
)
ggplot(plot_data4, aes(x = group, y = expression, fill = group)) +
  geom_boxplot() +
  theme_classic() +
  labs(title = "NR3C2 Expression: Young vs Old Heart (GSE263566)",
       y = "Expression",
       x = "Group") +
  scale_fill_manual(values = c("Young" = "steelblue", "Old" = "tomato"))
ggsave("NR3C2_GSE263566_plot.png", width = 6, height = 4)
