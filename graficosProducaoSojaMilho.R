# Pacotes necessários
library(ggplot2)

# Criar pasta charts caso não exista
if (!dir.exists("output/charts")) {
  dir.create("output/charts")
}

# Ler os CSVs
dados_corn <- read.csv("output/csv/dados_corn.csv")
dados_soybeans <- read.csv("output/csv/dados_soybeans.csv")

plot_corn_1980_2000 <- ggplot(dados_corn, aes(x = Year, y = Value)) +
  geom_line(color = "darkgreen", size = 1.2) +
  geom_point(color = "darkgreen", size = 2) +
  labs(
    title = "Produção de Milho ao longo dos anos",
    x = "Ano",
    y = "Valor (Mt)"
  ) +
  theme_bw()


plot_soybean_1980_2000 <- ggplot(dados_soybeans, aes(x = Year, y = Value)) +
  geom_line(color = "darkgreen", size = 1.2) +
  geom_point(color = "darkgreen", size = 2) +
  labs(
    title = "Produção de Soja ao longo dos anos",
    x = "Ano",
    y = "Valor (Mt)"
  ) +
  theme_bw()

plot_corn_1980_2000
plot_soybean_1980_2000

# Salvar gráfico de Corn
ggsave("output\\charts\\grafico_corn.png", plot = plot_corn_1980_2000, width = 8, height = 5, dpi = 300)

# Salvar gráfico de Soybeans
ggsave("output\\charts\\grafico_soybeans.png", plot = plot_soybean_1980_2000, width = 8, height = 5, dpi = 300)
