# Carregar pacotes úteis
library(readr)     
library(tidyverse)
library(plotly)


# Definir o caminho do arquivo
arquivo_csv <- "data/FAOSTAT_data_en_8-14-2025.csv"

# Ler o arquivo CSV
dados_faostat <- read_csv(arquivo_csv)

# Transformar unidade e ajustar os valores
dados_faostat <- dados_faostat %>%
  mutate(
    Unit = ifelse(Unit == "tonnes", "Mt", Unit),
    Value = ifelse(Unit == "Mt", Value / 1000000, Value)
  )

# Subconjunto para "Maize (corn)" → "Corn"
dados_corn <- dados_faostat %>%
  filter(Item == "Maize (corn)") %>%
  mutate(Item = "Corn") %>% 
  select(Crop = Item, Year, Value, Unit)

# Subconjunto para "Soya beans" → "Soybeans"
dados_soybeans <- dados_faostat %>%
  filter(Item == "Soya beans") %>%
  mutate(Item = "Soybeans") %>% 
  select(Crop = Item, Year, Value, Unit)



# Criar pasta charts caso não exista
if (!dir.exists("output/csv")) {
  dir.create("output/csv")
}

# Salvar dados de Corn
write_csv(dados_corn, "output/csv/dados_corn.csv")

# Salvar dados de Soybeans
write_csv(dados_soybeans, "output/csv/dados_soybeans.csv")






