# Backup do Mk-Auth para Telegram


## Instalação

	wget https://github.com/brlink-org/bckp-mkauth-telegram/archive/refs/heads/main.zip
    unzip main.zip
    chmod 777 bckp-mkauth-telegram.sh
    echo "00 07 * * * root bash /root/bckp-mkauth-telegram.sh &" >> /etc/crontab
    /etc/init.d/cron restart


## Equipe BrLink.org