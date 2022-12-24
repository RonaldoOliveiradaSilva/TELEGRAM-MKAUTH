# Backup do Mk-Auth para o Telegram
Este script é utilizado para enviar o último arquivo de backup criado pelo sistema Mk-Auth para o Telegram.



## Instalação

1. Faça o download do script com o comando:
```
wget https://github.com/brlink-org/bckp-mkauth-telegram/archive/refs/heads/main.zip
```

2. Descompacte o arquivo baixado com o comando:
```
unzip main.zip
```

3. Adicione permissões de execução para o script com o comando:
```
chmod 777 bckp-mkauth-telegram.sh
```

4. Adicione a seguinte linha ao arquivo de configuração do cron para agendar a execução do script diariamente às 07h00:
```
echo "00 07 * * * root /root/bckp-mkauth-telegram.sh >/dev/null 2>&1" >> /etc/crontab
```

5. Reinicie a crontab para agendamento com o comando:
```
/etc/init.d/cron restart
```


# Equipe BrLink.org
