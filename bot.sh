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

apt-get install -y x11vnc xvfb libxcursor1 ca-certificates bzip2 libnss3 libegl1-mesa x11-xkb-utils libasound2 libglib2.0-0 python nano screen zip > /dev/null;
echo $'\E[30m' "______________________________________________________";
echo -n $'\E[33m' "Actualizando certificados ..."; update-ca-certificates > /dev/null; echo $'\E[32m' " Completado.";
echo $'\E[30m' "______________________________________________________";
echo -n $'\E[33m' "Creando usuario ..."; adduser --disabled-password --gecos "" sinusbot1 > /dev/null; echo $'\E[32m' " Completado.";
echo $'\E[30m' "______________________________________________________";
echo -n $'\E[33m' "Creando directorio ..."; mkdir -p /opt/ts3soundboard1 > /dev/null; echo $'\E[32m' " Completado.";
echo $'\E[30m' "______________________________________________________";
echo -n $'\E[33m' "Concediendo permisos directorio ..."; chown -R sinusbot1:sinusbot1 /opt/ts3soundboard1 > /dev/null; echo $'\E[32m' " Completado.";

cd /opt/ts3soundboard1 > /dev/null;
echo $'\E[30m' "______________________________________________________";
echo -n $'\E[33m' "Descargando Sinusbot ..."; wget -q https://www.sinusbot.com/dl/sinusbot.current.tar.bz2 > /dev/null; echo $'\E[32m' " Completado.";
echo $'\E[30m' "______________________________________________________";
tar -xjf sinusbot.current.tar.bz2 > /dev/null;

echo -n $'\E[33m' "Descargando TS3 ..."; wget -q http://dl.4players.de/ts/releases/3.1.10/TeamSpeak3-Client-linux_amd64-3.1.10.run > /dev/null; echo $'\E[32m' " Completado.";

chmod 0755 TeamSpeak3-Client-linux_amd64-3.1.10.run > /dev/null;
echo $'\E[30m' "______________________________________________________";
echo -n $'\E[31m' "Accion requerida!, presione(Q, Enter, Y, Enter)"; echo $'\E[30m' " Completado."; ./TeamSpeak3-Client-linux_amd64-3.1.10.run > /dev/null;
echo $'\E[30m' "....";


rm TeamSpeak3-Client-linux_amd64/xcbglintegrations/libqxcb-glx-integration.so > /dev/null;

mkdir TeamSpeak3-Client-linux_amd64/plugins > /dev/null;

cp plugin/libsoundbot_plugin.so TeamSpeak3-Client-linux_amd64/plugins/ > /dev/null;

chmod 755 sinusbot > /dev/null;

wget -q https://raw.githubusercontent.com/saoby/script-sinusbot/master/config.ini
echo $'\E[30m' "______________________________________________________";
echo -n $'\E[33m' "Descargando yt-dl ..."; sudo wget -q https://yt-dl.org/downloads/latest/youtube-dl -O /usr/local/bin/youtube-dl > /dev/null; echo $'\E[32m' " Completado.";

sudo chmod a+rx /usr/local/bin/youtube-dl > /dev/null;

cd /opt/ts3soundboard1/scripts > /dev/null;
echo $'\E[30m' "______________________________________________________";
echo -n $'\E[33m' "Descargando scripts ..."; sudo wget -q https://github.com/saoby/script-sinusbot/raw/master/scripts.zip > /dev/null; echo $'\E[32m' " Completado.";
echo $'\E[30m' "______________________________________________________";
unzip scripts.zip  > /dev/null;

cd /opt/ts3soundboard1 > /dev/null;

chown -R sinusbot1:sinusbot1 /opt/ts3soundboard1 > /dev/null;

cd /opt/ts3soundboard1 > /dev/null;
rm /tmp/.sinusbot.lock > /dev/null;
rm /tmp/.X11-unix/X40 > /dev/null;
echo -n $'\E[33m' "Activando sinusbot ..."; screen -dmS sinusbot1 bash -c 'su sinusbot1 -c "./sinusbot --override-password=jp7237056"' > /dev/null; echo $'\E[32m' " Completado.";
echo $'\E[30m' "______________________________________________________";
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

sleep 5s
              echo $'\E[32m' "Usuario: admin"
           echo $'\E[32m' "Contraseña: passwd"
		       echo $'\E[32m' "Puerto: 8087"
echo -n $'\E[37m'
