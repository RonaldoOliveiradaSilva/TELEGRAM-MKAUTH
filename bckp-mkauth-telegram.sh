#!/bin/bash

# Altere abaixo o token e id do bot do telegram e o caminho do diretório onde estão os arquivos de backup

Token="000000000:0000000000000-0000000000000000000000000000000"
ChatID="-1234567890123"
DirArqBkp="/opt/mk-auth/bckp/"

# Formato de compactação desejado: zip ou tar
Compactacao="zip"



# Não alterar mais nada abaixo 
# Exceto por sua conta e risco

# Captura data do envio do backup
Data=$(date +%d/%m/%Y)

# Mensagem de notificação
Notifica="Mk-Auth - Backup do dia $Data"

# Verifica se o diretório existe
if [ -d "$DirArqBkp" ]; then

# Seleciona o último arquivo de backup criado
ArqBkp=$(ls -t "$DirArqBkp" | head -1)

# Compacta o arquivo de backup
if [ "$Compactacao" = "zip" ]; then
  zip -r "$DirArqBkp/$ArqBkp.zip" "$DirArqBkp/$ArqBkp"
  ArqBkp="$ArqBkp.zip"
else
  tar -zcvf "$DirArqBkp/$ArqBkp.tar.gz" "$DirArqBkp/$ArqBkp"
  ArqBkp="$ArqBkp.tar.gz"
fi

# Verifica se o arquivo existe
if [ -a "$DirArqBkp/$ArqBkp" ]; then
# Envia para o telegram
curl -F document=@"${DirArqBkp}/${ArqBkp}" -F caption="$Notifica" "https://api.telegram.org/bot${Token}/sendDocument?chat_id=$ChatID" &>/dev/null
fi
fi
exit 0