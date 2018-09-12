#!/bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/snap/bin
HEIGHT=15
WIDTH=50
CHOICE_HEIGHT=4
BACKTITLE="SCRIPT Example"
TITLE="BASH MENU"
MENU="Choose one of the following options:"




OPTIONS=(1 "MENU1"
         2 "MENU2"
         3 "MENU3"
         4 "EXIT")

CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear
case $CHOICE in
        1)  echo "1"
            read -p "Press enter to continue"
            /bin/bash menu.bash
           ;;
        2)  echo "1"
            read -p "Press enter to continue"
            /bin/bash menu.bash
           ;;
        3)  echo "1"
            read -p "Press enter to continue"
            /bin/bash menu.bash
           ;;
        4)
          exit 0
          ;;
esac
