#!/bin/bash

# altere abaixo o token e id

# token do telegram
Token="000000000:0000000000000-0000000000000000000000000000000"

# ID do telegram
ChatID="-1234567890123"



# não alterar mais nada abaixo
# exceto por sua conta e risco

# último arquivo de backup
ArqBkp=$(ls -t /opt/mk-auth/bckp/ | head -1)

# patch/caminho/diretório e arquivo de backup
DirArqBkp="/opt/mk-auth/bckp/$ArqBkp"

# se o arquivo existe
if [ -a $DirArqBkp ]
then
# envie para o telegram
    curl -F document=@"${DirArqBkp}" -F caption="Backup" "https://api.telegram.org/bot${Token}/sendDocument?chat_id=$ChatID" &>/dev/null
fi
exit 0