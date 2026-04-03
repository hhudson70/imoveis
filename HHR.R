# --- Analise Estatistica de Imoveis ---
# Leitura dos dados
dados <- read.csv("imoveis - imoveis.csv")

# 1. Analise Descritiva
# Gera estatisticas como media, mediana e quartis para as 5 variaveis
summary(dados)

print("Estrutura dos Dados:")
str(dados)

# 3. Visualização de Dados

# Histograma do Preço do Imóvel
hist(dados$preco, 
     main = "Distribuição dos Preços dos Imóveis",
     xlab = "Preço", 
     ylab = "Frequência", 
     col = "skyblue", 
     border = "white")

# Gráfico de Dispersão: Imposto Anual (y) vs Metragem (x)
plot(x = dados$metragem, 
     y = dados$imposto_anual,
     main = "Relação: Metragem vs Imposto Anual",
     xlab = "Metragem (m²)", 
     ylab = "Imposto Anual",
     pch = 19, 
     col = "darkorange")

# Adiciona uma linha de tendência para melhor visualização
abline(lm(imposto_anual ~ metragem, data = dados), col = "blue", lwd = 2)

