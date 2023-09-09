diretorio="/var/log"
extensao=".log"

find "$diretorio" -name "*$extensao" -type f -mtime +7 -exec rm {} \;