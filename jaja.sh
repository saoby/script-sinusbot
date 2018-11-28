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
echo -n $'\E[33m' "Instalando paquetes ..."; apt-get install -y x11vnc xvfb libxcursor1 ca-certificates bzip2 libnss3 libegl1-mesa x11-xkb-utils libasound2 libglib2.0-0 python nano screen > /dev/null; echo $'\E[32m' " Completado.";
echo -n $'\E[33m' "Actualizando certificados ..."; update-ca-certificates > /dev/null; echo $'\E[32m' " Completado.";
echo -n $'\E[33m' "Creando usuario ..."; adduser --disabled-password --gecos "" sinusbot > /dev/null; echo $'\E[32m' " Completado.";
echo -n $'\E[33m' "Creando directorio ..."; mkdir -p /opt/ts3soundboard > /dev/null; echo $'\E[32m' " Completado.";
echo -n $'\E[33m' "Concediendo permisos directorio ..."; chown -R sinusbot:sinusbot /opt/ts3soundboard > /dev/null; echo $'\E[32m' " Completado.";
cd /opt/ts3soundboard > /dev/null;
echo -n $'\E[33m' "Descargando Sinusbot ..."; wget -q https://www.sinusbot.com/dl/sinusbot.current.tar.bz2 > /dev/null; echo $'\E[32m' " Completado.";
tar -xjf sinusbot.current.tar.bz2 > /dev/null;
cp config.ini.dist config.ini > /dev/null;
echo -n $'\E[33m' "Descargando TS3 ..."; wget -q http://dl.4players.de/ts/releases/3.1.10/TeamSpeak3-Client-linux_amd64-3.1.10.run > /dev/null; echo $'\E[32m' " Completado.";
chmod 0755 TeamSpeak3-Client-linux_amd64-3.1.10.run > /dev/null;
echo -n $'\E[31m' "Accion requerida!, presione(Q, Enter, Y, Enter)"; ./TeamSpeak3-Client-linux_amd64-3.1.10.run > /dev/null;
rm TeamSpeak3-Client-linux_amd64/xcbglintegrations/libqxcb-glx-integration.so > /dev/null;
mkdir TeamSpeak3-Client-linux_amd64/plugins > /dev/null;
cp plugin/libsoundbot_plugin.so TeamSpeak3-Client-linux_amd64/plugins/ > /dev/null;
chmod 755 sinusbot > /dev/null;
sed -i '4d' config.ini  > /dev/null;
echo YoutubeDLPath = "/usr/local/bin/youtube-dl" >> config.ini  > /dev/null;
echo -n $'\E[33m' "Descargando yt-dl ..."; sudo wget https://yt-dl.org/downloads/latest/youtube-dl -O /usr/local/bin/youtube-dl > /dev/null; echo $'\E[32m' " Completado.";
sudo chmod a+rx /usr/local/bin/youtube-dl > /dev/null;
cd /opt/ts3soundboard/scripts > /dev/null;
echo -n $'\E[33m' "Descargando scripts ..."; sudo wget -q https://raw.githubusercontent.com/saoby/script-sinusbot/master/scripts.tar.bz2 > /dev/null; echo $'\E[32m' " Completado.";
tar -xjf scripts.tar.bz2  > /dev/null;
echo -n $'\E[37m'