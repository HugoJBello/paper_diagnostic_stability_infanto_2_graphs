install.packages('parcats')
install.packages('easyalluvial')
library('parcats')
library('easyalluvial')

setwd('/home/goku/Documents/uva-research/research/paper_diagnostic_stability_infanto_2_graphs/data/')
all_hombres <- read.csv("./datos_grafico_recreados.csv",  header=TRUE, sep=";")


names(all_hombres)[names(all_hombres) == "initial_diagnose"] <- " "
names(all_hombres)[names(all_hombres) == "final_diagnose"] <- "  "


col_vector =c("#31d4cc","#a5f291", "#4b38f5", "#a6a1cf", 
"#9211cf", "#10c43a","#e7eb28", "#e37346", "#b03200", "#ba278e","#db91c5", "#0b03fc", "#d13bae", "#cc1225")

p = alluvial_wide(all_hombres, max_variables = 2,  col_vector_flow = col_vector, col_vector_value = col_vector)

parcats(p,  data_input = all_hombres)



all_hombres2 <- read.csv("./datos_grafico_recreados.csv",  header=TRUE, sep=";")

names(all_hombres2)[names(all_hombres2) == "initial.diagnose"] <- " "
names(all_hombres2)[names(all_hombres2) == "final.diagnose"] <- "  "

p = alluvial_wide(all_hombres2, max_variables = 2,    col_vector_flow = col_vector, col_vector_value = col_vector)

parcats(p,  data_input = all_hombres2)

