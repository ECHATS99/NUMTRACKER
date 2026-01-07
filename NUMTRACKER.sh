#!/bin/bash

cyan="\e[96m"
green="\e[92m"
red="\e[91m"
nc="\e[0m"

banner() {
    echo -e "${cyan}"
    echo "=============================="
    echo "      BLACK HAWKS OSINT"
    echo "          By ECHATS"
    echo "=============================="
    echo -e "${nc}"
}

pause() {
    read -p "Appuyez sur Entrée pour continuer..."
}

email_osint() {
    read -p "Entrez l'adresse email : " email
    echo -e "${green}[+] HaveIBeenPwned (fuite de données)...${nc}"
    curl -s "https://haveibeenpwned.com/api/v3/breachedaccount/$email" \
    -H "hibp-api-key: 00000000000000000000000000000" | jq . || echo "API HIBP non configurée."

    echo ""
    echo -e "${green}[+] DuckDuckGo search...${nc}"
    curl -s "https://api.duckduckgo.com/?q=$email&format=json" | jq .
    pause
}

phone_osint() {
    read -p "Entrez le numéro (format international) : " num
    echo -e "${green}[+] Google dorking...${nc}"
    termux-open-url "https://www.google.com/search?q=\"$num\""
    echo -e "[+] Recherche ouverte dans le navigateur."
    pause
}

imei_osint() {
    read -p "Entrez IMEI : " imei
    echo -e "${green}[+] Vérification IMEI sur imei24.com...${nc}"
    termux-open-url "https://www.imei24.com/imei_check/$imei/"
    echo -e "${green}[+] Vérification imei.info...${nc}"
    termux-open-url "https://www.imei.info/$imei/"
    echo -e "${green}[+] Vérification imeipro.info...${nc}"
    termux-open-url "https://www.imeipro.info/check_imei/$imei/"
    pause
}

name_osint() {
    read -p "Nom : " nom
    read -p "Prénom : " prenom
    query="$nom+$prenom"
    echo -e "${green}[+] Recherche généraliste...${nc}"
    termux-open-url "https://www.google.com/search?q=$query"
    termux-open-url "https://duckduckgo.com/?q=$query"
    pause
}

menu() {
    while true; do
        clear
        banner
        echo -e "${green}[1] OSINT Email"
        echo "[2] OSINT Numéro"
        echo "[3] OSINT IMEI"
        echo "[4] OSINT Nom & Prénom"
        echo -e "[0] Quitter${nc}"
        read -p "Choix : " c

        case $c in
            1) email_osint ;;
            2) phone_osint ;;
            3) imei_osint ;;
            4) name_osint ;;
            0) exit 0 ;;
            *) echo -e "${red}Choix invalide${nc}" && sleep 1 ;;
        esac
    done
}

menu
