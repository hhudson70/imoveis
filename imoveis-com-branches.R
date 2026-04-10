#Script: imoveis-com-branches
# Projeto: Imoveis

# =========================
# 1. Leitura do banco de dados
# =========================

# Definir diretório (opcional)
# setwd("caminho/da/sua/pasta")

# Leitura do arquivo CSV
dados_imoveis <- read.csv("imoveis - imoveis.csv", 
                          header = TRUE, 
                          sep = ",", 
                          stringsAsFactors = FALSE)

# Visualizar dados
head(dados_imoveis)
str(dados_imoveis)


# =========================
# 2. Gráficos
# =========================

# Histograma (exemplo com preço)
hist(dados_imoveis$preco,
     main = "Distribuição de Preços",
     xlab = "Preço",
     col = "lightblue")

# Boxplot
boxplot(dados_imoveis$preco,
        main = "Boxplot dos Preços",
        col = "orange")


# =========================
# 3. Medidas
# =========================

# Média
mean(dados_imoveis$preco, na.rm = TRUE)

# Mediana
median(dados_imoveis$preco, na.rm = TRUE)

# Desvio padrão
sd(dados_imoveis$preco, na.rm = TRUE)

# Resumo geral
summary(dados_imoveis)

