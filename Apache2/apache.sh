#!/bin/bash

while true; do
  clear
  printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
  printf "%*s\n" $(((${#title}+$COLUMNS)/2)) "APACHE MENU"
  printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
  printf "%2s%s\n" "" "1. Start Apache"
  printf "%2s%s\n" "" "2. Restart Apache"
  printf "%2s%s\n" "" "3. Stop Apache"
  printf "%2s%s\n" "" "4. Show Apache status"
  printf "%2s%s\n" "" "5. Show Apache error log"
  printf "%2s%s\n" "" "6. Show Apache access log"
  printf "%2s%s\n" "" "0. Exit"
  printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -

  read option

  case $option in
    1)
      sudo systemctl start apache2
      clear
      echo "Apache started."
      read -n 1 -s -r -p "Press any key to continue..."
      ;;
    2)
      sudo systemctl restart apache2
      clear
      echo "Apache restarted."
      read -n 1 -s -r -p "Press any key to continue..."
      ;;
    3)
      sudo systemctl stop apache2
      clear
      echo "Apache stopped."
      read -n 1 -s -r -p "Press any key to continue..."
      ;;
    4)
      clear
      echo "Press 'q' to exit the status view and go back to the main menu."
      printf "\n"
      sudo systemctl status apache2
      read -n 1 -s -r
      ;;
    5)
      clear
      echo "Press 'Ctrl + C' to exit the error log and go back to the main menu."
      printf "\n"
      sudo tail -f /var/log/apache2/error.log
      read -n 1 -s -r
      ;;
    6)
      clear
      echo "Press 'Ctrl + C' to exit the access log and go back to the main menu."
      printf "\n"
      sudo tail -f /var/log/apache2/access.log
      read -n 1 -s -r
      ;;
    0)
      echo "Exiting..."
      exit 0
      ;;
    *)
      clear
      echo "Invalid option."
      read -n 1 -s -r -p "Press any key to continue..."
      ;;
  esac
done