#!/bin/bash

CURRENT_DATE=$(date)
SYSTEM_NAME=$(hostname)
UPTIME=$(uptime -p)
USER_COUNT=$(who | wc -l)

dialog --title "Informacje o systemie" --msgbox "Data: $CURRENT_DATE\n\nSystem: $SYSTEM_NAME\nCzas pracy systemu: $UPTIME\nLiczba zalogowanych użytkowników: $USER_COUNT" 10 60

# docker pull ubuntu
# docker run -it ubuntu bash
# apt update && apt install dialog -y
# apt update && apt install nano -y
# nano zad7.sh
# chmod +x zad7.sh
# ./zad7.sh
# exit
# docker ps -a
# docker cp b5a03a783ae7:/zad7.sh ./