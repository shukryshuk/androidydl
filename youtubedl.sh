#!/system/bin/sh

# Colors
# ----------------------------------------
BL='\e[01;90m' > /dev/null 2>&1; # Black
R='\e[01;91m' > /dev/null 2>&1; # Red
G='\e[01;92m' > /dev/null 2>&1; # Green
Y='\e[01;93m' > /dev/null 2>&1; # Yellow
B='\e[01;94m' > /dev/null 2>&1; # Blue
P='\e[01;95m' > /dev/null 2>&1; # Purple
C='\e[01;96m' > /dev/null 2>&1; # Cyan
W='\e[01;97m' > /dev/null 2>&1; # White
LG='\e[01;37m' > /dev/null 2>&1; # Light Gray
N='\e[0m' > /dev/null 2>&1; # Null
L='\033[7m' > /dev/null 2>&1; #Lines
X='\033[0m' > /dev/null 2>&1; #Closer
# ----------------------------------------

apt update -y $N

apt install figlet -y $N

figlet "Youtube-DL" 

echo -e $Y $L"YouTube-dl Installer By"  $R "Shuk" $N

echo -e $Y $L"Installing python..." $N

		pkg install python -y

echo -e $Y $L"Installing python..." $N

		apt install ffmpeg -y

echo -e $Y $L"Installing wget..." $N

		pkg install wget -y

echo -e $Y $L"Installing YouTube-dl..." $N 

		pip install youtube-dl

echo -e $Y $L"Setting up configs..." $N
sleep 2

echo -e $Y $L "Creating Youtube folder..." $N
		mkdir /data/data/com.termux/files/home/storage/shared/Youtube
sleep 1.5

echo -e $Y $L "Creating youtube-dl config..." $N
		mkdir -p ~/.config/youtube-dl
sleep 1.5

echo -e $Y $L "Getting config file..." $N
		wget https://www.dropbox.com/s/mcyhxmrqpi3f9y3/config?dl=1 -P /data/data/com.termux/files/home/.config/youtube-dl

echo -e $Y $L "Creating bin folder..." $N
		mkdir ~/bin
sleep 1.5

echo -e $Y $L "Getting files..." $N
		wget https://www.dropbox.com/s/oi3moc9utbzal2l/termux-url-opener?dl=1 -P /data/data/com.termux/files/home/bin
		mv /data/data/com.termux/files/home/.config/youtube-dl/config?dl=1 /data/data/com.termux/files/home/.config/youtube-dl/config
		mv /data/data/com.termux/files/home/bin/termux-url-opener?dl=1 /data/data/com.termux/files/home/bin/termux-url-opener

echo -e $Y $L "Finishing configuration..." $N
sleep 5

echo -e $G"Installation Finished..." $N
