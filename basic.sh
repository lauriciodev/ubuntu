#!/bin/bash

# Este é o shebang, que indica que o script deve ser executado usando o Bash.

# -------------------------
# Definindo Variáveis
# -------------------------
# Definimos algumas variáveis para serem usadas ao longo do script.
arquivo="arquivo_temporario.txt"   # Nome do arquivo temporário
texto="Este é um texto de exemplo." # Texto a ser escrito no arquivo

# -------------------------
# Funções
# -------------------------
# Funções são blocos de código reutilizáveis que podem ser chamados várias vezes ao longo do script.

# Função para criar um arquivo e escrever texto nele
criar_arquivo() {
    echo "Criando arquivo..."
    echo $texto > $arquivo
    echo "Arquivo criado e texto escrito."
}

# Função para ler o conteúdo de um arquivo
ler_arquivo() {
    if [ -f $arquivo ]; then  # Verifica se o arquivo existe
        echo "Lendo conteúdo do arquivo..."
        cat $arquivo
    else
        echo "Arquivo não encontrado."
    fi
}

# Função para excluir um arquivo
excluir_arquivo() {
    if [ -f $arquivo ]; then  # Verifica se o arquivo existe
        echo "Excluindo arquivo..."
        rm $arquivo
        echo "Arquivo excluído."
    else
        echo "Arquivo não encontrado."
    fi
}

# -------------------------
# Execução do Script
# -------------------------
# O bloco principal do script que chama as funções definidas acima.

# Criar o arquivo e escrever texto nele
criar_arquivo

# Ler o conteúdo do arquivo
ler_arquivo

# Perguntar ao usuário se deseja excluir o arquivo
read -p "Deseja excluir o arquivo? (s/n): " resposta
# 'read -p' lê a entrada do usuário e armazena na variável 'resposta'.

# Condicional para verificar a resposta do usuário
if [ "$resposta" == "s" ]; then
    excluir_arquivo
else
    echo "Arquivo não será excluído."
fi

# -------------------------
# Loop de Contagem
# -------------------------
# Exemplo de um loop for que conta de 1 a 5

echo "Contagem de 1 a 5:"
for i in {1..5}; do
    echo $i
done
ddddd
# -------------------------
# Mensagem Final
# -------------------------
# Exibimos uma mensagem indicando que o script foi concluído

echo "Script concluído."

# Fim do script
