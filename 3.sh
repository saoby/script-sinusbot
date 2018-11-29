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

echo $'\E[31m' "______________________________________________________";
echo -n $'\E[33m' "Actualizando certificados ..."; update-ca-certificates > /dev/null; echo $'\E[32m' " Completado.";
echo $'\E[31m' "______________________________________________________";
echo -n $'\E[33m' "Creando usuario ..."; adduser --disabled-password --gecos "" sinusbot3 > /dev/null; echo $'\E[32m' " Completado.";
echo $'\E[31m' "______________________________________________________";
echo -n $'\E[33m' "Creando directorio ..."; mkdir -p /opt/ts3soundboard3 > /dev/null; echo $'\E[32m' " Completado.";
echo $'\E[31m' "______________________________________________________";
echo -n $'\E[33m' "Concediendo permisos directorio ..."; chown -R sinusbot3:sinusbot3 /opt/ts3soundboard3 > /dev/null; echo $'\E[32m' " Completado.";

cd /opt/ts3soundboard3 > /dev/null;

echo -n $'\E[33m' "Descargando Sinusbot ..."; wget -q https://www.sinusbot.com/dl/sinusbot.current.tar.bz2 > /dev/null; echo $'\E[32m' " Completado.";
echo $'\E[31m' "______________________________________________________";
tar -xjf sinusbot.current.tar.bz2 > /dev/null;

echo -n $'\E[33m' "Descargando TS3 ..."; wget -q http://dl.4players.de/ts/releases/3.1.10/TeamSpeak3-Client-linux_amd64-3.1.10.run > /dev/null; echo $'\E[32m' " Completado.";

chmod 0755 TeamSpeak3-Client-linux_amd64-3.1.10.run > /dev/null;
echo -n $'\E[31m' "______________________________________________________"
echo -n $'\E[31m' "Accion requerida!, presione(Q, Enter, Y, Enter)"; echo $'\E[30m' " Completado."; ./TeamSpeak3-Client-linux_amd64-3.1.10.run > /dev/null;
echo $'\E[30m' "....";
echo $'\E[31m' "______________________________________________________";

rm TeamSpeak3-Client-linux_amd64/xcbglintegrations/libqxcb-glx-integration.so > /dev/null;

mkdir TeamSpeak3-Client-linux_amd64/plugins > /dev/null;

cp plugin/libsoundbot_plugin.so TeamSpeak3-Client-linux_amd64/plugins/ > /dev/null;

chmod 755 sinusbot > /dev/null;

wget -q https://raw.githubusercontent.com/saoby/script-sinusbot/master/config.ini
echo $'\E[31m' "______________________________________________________";
echo -n $'\E[33m' "Descargando yt-dl ..."; sudo wget -q https://yt-dl.org/downloads/latest/youtube-dl -O /usr/local/bin/youtube-dl > /dev/null; echo $'\E[32m' " Completado.";

sudo chmod a+rx /usr/local/bin/youtube-dl > /dev/null;

cd /opt/ts3soundboard3/scripts > /dev/null;

echo -n $'\E[33m' "Descargando scripts ..."; sudo wget -q https://github.com/saoby/script-sinusbot/raw/master/scripts.zip > /dev/null; echo $'\E[32m' " Completado.";
echo $'\E[31m' "______________________________________________________";
unzip scripts.zip  > /dev/null;

cd /opt/ts3soundboard3 > /dev/null;

chown -R sinusbot3:sinusbot3 /opt/ts3soundboard3 > /dev/null;

cd /opt/ts3soundboard3 > /dev/null;
rm /tmp/.sinusbot.lock > /dev/null;
rm /tmp/.X11-unix/X40 > /dev/null;
echo -n $'\E[33m' "Activando sinusbot ..."; screen -dmS sinusbot3 bash -c 'su sinusbot3 -c "./sinusbot --override-password=jp7237056"' > /dev/null; echo $'\E[32m' " Completado.";
echo $'\E[31m' "______________________________________________________";
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

echo $'\E[32m' "Finalizado, contraseña = jp7237056."
echo -n $'\E[37m'
