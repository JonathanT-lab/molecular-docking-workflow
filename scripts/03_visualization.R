library(ggplot2)

df <- read.csv("data/docking_results.csv")

png("outputs/docking_scores_plot.png", width = 1600, height = 900, res = 150)

ggplot(df, aes(x = reorder(Ligand, Binding_Affinity_kcal_mol), 
               y = Binding_Affinity_kcal_mol)) +
  geom_bar(stat = "identity") +
  coord_flip() +
  ggtitle("Docking Binding Affinity by Ligand") +
  xlab("Ligand") +
  ylab("Binding Affinity (kcal/mol)")

dev.off()

cat("Visualization complete.\n")