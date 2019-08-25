#!/bin/bash
echo -n $'\E[35m'
cat << "EOF"

   _____        ____  _ __     __            _____           _       _   
  / ____|      / __ \| |\ \   / /           / ____|         (_)     | |  
 | (___   __ _| |  | | |_\ \_/ /   ______  | (___   ___ _ __ _ _ __ | |_ 
  \___ \ / _` | |  | | '_ \   /   |______|  \___ \ / __| '__| | '_ \| __|
  ____) | (_| | |__| | |_) | |              ____) | (__| |  | | |_) | |_ 
 |_____/ \__,_|\____/|_.__/|_|             |_____/ \___|_|  |_| .__/ \__|
                                                              | |        
                                                              |_|        

EOF
echo -n $'\E[37m'

sleep 3s
echo -n $'\E[33m' "Actualizando paquetes ..."; apt-get update > /dev/null; echo $'\E[32m' " Completado.";
echo $'\E[30m' "______________________________________________________";
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash - > /dev/null;

echo -n $'\E[33m' "Instalando Node js ..."; sudo apt-get install -y nodejs > /dev/null; echo $'\E[32m' " Completado.";

sudo apt install git > /dev/null;
echo $'\E[30m' "______________________________________________________";
echo -n $'\E[33m' "Descargando bots ..."; git clone https://github.com/xN3BULA/free-agario-bots.git > /dev/null; echo $'\E[32m' " Completado.";
cd free-agario-bots > /dev/null;
sudo chmod +x install.sh > /dev/null;
sudo ./install.sh > /dev/null;
sudo npm i -g pm2 > /dev/null;
echo $'\E[30m' "______________________________________________________";
echo -n $'\E[33m' "Iniciando bots ..."; sudo pm2 start process.js > /dev/null; echo $'\E[32m' " Completado.";
ip=$(curl -s https://api.ipify.org)
sleep 5s
echo -n $'\E[30m' "              ";echo -n $'\E[37m' "IP: $ip";echo
  
echo -n $'\E[37m'
