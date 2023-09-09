contador=1
while [ $contador -le 10 ];
do
  nome_diretorio="diretorio_$contador"
  mkdir "$nome_diretorio"
  echo "Diretório $nome_diretorio criado."
  contador=$((contador + 1))
done