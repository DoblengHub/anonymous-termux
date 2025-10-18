#!/data/data/com.termux/files/usr/bin/env bash
WIDTH=60
USER_NAME="Dobleng"
LOCATION="Tangerang"

YELLOW="\e[1;33m"
RESET="\e[0m"

center() {
  local s="$1"
  local pad=$(( (WIDTH - ${#s}) / 2 ))
  if [ $pad -lt 0 ]; then pad=0; fi
  printf "%*s%s%*s\n" "$pad" "" "$s" "$pad" ""
}

clear
printf "${YELLOW}"
printf '┏%0.s━' $(seq 1 $WIDTH)
printf '┓\n'
printf "┃%*s┃\n" $WIDTH " "

center "█████╗ ███╗   ██╗ ██████╗ ███╗   ███╗███╗   ███╗██╗   ██╗"
center "██╔══██╗████╗  ██║██╔═══██╗████╗ ████║████╗ ████║██║   ██║"
center "███████║██╔██╗ ██║██║   ██║██╔████╔██║██╔████╔██║██║   ██║"
center "██╔══██║██║╚██╗██║██║   ██║██║╚██╔╝██║██║╚██╔╝██║██║   ██║"
center "██║  ██║██║ ╚████║╚██████╔╝██║ ╚═╝ ██║██║ ╚═╝ ██║╚██████╔╝"

printf "┃%*s┃\n" $WIDTH " "

DATE_STR="$(date +"%A, %d %B %Y")"
TIME_STR="$(date +"%T")"

center "User   : ${USER_NAME}"
center "Date   : ${DATE_STR}"
center "Jam    : ${TIME_STR}"
center "Lokasi : ${LOCATION}"

printf "┃%*s┃\n" $WIDTH " "
printf '┗%0.s━' $(seq 1 $WIDTH)
printf '┛\n'
printf "${RESET}"