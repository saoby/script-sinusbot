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



apt-get update > /dev/null

apt-get install -y x11vnc xvfb libxcursor1 ca-certificates bzip2 libnss3 libegl1-mesa x11-xkb-utils libasound2 libglib2.0-0 python nano screen zip >> script.log 2>&1

update-ca-certificates > /dev/null

adduser --disabled-password --gecos "" sinusbot2 > /dev/null

mkdir -p /opt/ts3soundboard2 > /dev/null

chown -R sinusbot2:sinusbot2 /opt/ts3soundboard2 > /dev/null;

cd /opt/ts3soundboard2 > /dev/null;

wget -q https://www.sinusbot.com/dl/sinusbot.current.tar.bz2 > /dev/null;

tar -xjf sinusbot.current.tar.bz2 > /dev/null;

wget -q http://dl.4players.de/ts/releases/3.1.10/TeamSpeak3-Client-linux_amd64-3.1.10.run > /dev/null;

chmod 0755 TeamSpeak3-Client-linux_amd64-3.1.10.run > /dev/null;

echo -n $'\E[30m' "222222222222222222";echo -n $'\E[36m' "Intervenir      Intervenir";echo
echo -n $'\E[30m' "123";./TeamSpeak3-Client-linux_amd64-3.1.10.run > /dev/null;


rm TeamSpeak3-Client-linux_amd64/xcbglintegrations/libqxcb-glx-integration.so > /dev/null;

mkdir TeamSpeak3-Client-linux_amd64/plugins > /dev/null;

cp plugin/libsoundbot_plugin.so TeamSpeak3-Client-linux_amd64/plugins/ > /dev/null;

chmod 755 sinusbot > /dev/null;

wget -q https://raw.githubusercontent.com/saoby/script-sinusbot/master/config.ini

sudo wget -q https://yt-dl.org/downloads/latest/youtube-dl -O /usr/local/bin/youtube-dl > /dev/null;

sudo chmod a+rx /usr/local/bin/youtube-dl > /dev/null;

cd /opt/ts3soundboard2/scripts > /dev/null;

sudo wget -q https://github.com/saoby/script-sinusbot/raw/master/scripts.zip > /dev/null;

unzip scripts.zip  > /dev/null

cd /opt/ts3soundboard2 > /dev/null;

chown -R sinusbot2:sinusbot2 /opt/ts3soundboard2 > /dev/null;

cd /opt/ts3soundboard2 > /dev/null;

rm /tmp/.sinusbot.lock > /dev/null;

rm /tmp/.X11-unix/X40 > /dev/null;

screen -dmS sinusbot2 bash -c 'su sinusbot1 -c "./sinusbot --override-password=passwd"' > /dev/null;
echo -n $'\E[37m' "22";

ip=$(curl -s https://api.ipify.org)
echo -n $'\E[30m' "222222222222222222";echo -n $'\E[37m' "Panel: $ip:8088";echo
echo -n $'\E[30m' "2222222222222222";echo -n $'\E[37m' "Usuario: admin";echo
echo -n $'\E[30m' "2222222222222";echo -n $'\E[37m' "Contraseña: passwd";echo

echo

