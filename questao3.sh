echo "Informe o tamanho da senha:"
read tamanho

senha=$(< /dev/urandom tr -dc _A-Z-a-z-0-9 | head -c$tamanho)

echo "A senha é: $senha"
