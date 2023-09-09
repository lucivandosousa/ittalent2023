echo "Digite o nome do arquivo de texto:"
read nome_arquivo

if [ -f "$nome_arquivo" ]; then
  num_palavras=$(wc -w < "$nome_arquivo")
  echo "O arquivo $nome_arquivo contém $num_palavras palavras."
else
  echo "O arquivo $nome_arquivo não existe."
fi