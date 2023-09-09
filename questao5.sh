# Função para realizar a adição
adicao() {
  resultado=$(($1 + $2))
  echo "Resultado: $resultado"
}

# Função para realizar a subtração
subtracao() {
  resultado=$(($1 - $2))
  echo "Resultado: $resultado"
}

# Função para realizar a multiplicação
multiplicacao() {
  resultado=$(($1 * $2))
  echo "Resultado: $resultado"
}

# Função para realizar a divisão
divisao() {
  if [ $2 -eq 0 ]; then
    echo "Erro: Divisão por zero não é permitida."
  else
    resultado=$(echo "scale=2; $1 / $2" | bc)
    echo "Resultado: $resultado"
  fi
}

echo "Calculadora"
echo "Selecione uma operação:"
echo "1. Adição"
echo "2. Subtração"
echo "3. Multiplicação"
echo "4. Divisão"
read escolha

echo "Digite o primeiro número:"
read num1
echo "Digite o segundo número:"
read num2

case $escolha in
  1) adicao $num1 $num2 ;;
  2) subtracao $num1 $num2 ;;
  3) multiplicacao $num1 $num2 ;;
  4) divisao $num1 $num2 ;;
  *) echo "Opção inválida." ;;
esac