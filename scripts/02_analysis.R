library(dplyr)

df <- read.csv("data/docking_results.csv")

# Rank ligands by binding affinity
df_sorted <- df %>%
  arrange(Binding_Affinity_kcal_mol)

# Select top 5 ligands
top_ligands <- df_sorted %>%
  head(5)

write.csv(top_ligands, "outputs/top_ligands.csv", row.names = FALSE)

# Summary
best <- df_sorted[1, ]

sink("outputs/docking_summary.txt")
cat("Molecular Docking Summary\n\n")
cat("Best ligand:", best$Ligand, "\n")
cat("Binding affinity:", best$Binding_Affinity_kcal_mol, "kcal/mol\n")
cat("Hydrogen bonds:", best$Hydrogen_Bonds, "\n")
sink()

print(top_ligands)