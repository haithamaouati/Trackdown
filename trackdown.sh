#!/bin/bash

# Author: Haitham Aouati
# GitHub: github.com/haithamaouati

# Text Format
normal="\e[0m"
bold="\e[1m"
faint="\e[2m"
underlined="\e[4m"
error_color="\e[1;31m"

# Dependencies check
dependencies=(figlet curl jq)
for cmd in "${dependencies[@]}"; do
    if ! command -v "$cmd" &>/dev/null; then
        echo -e "${error_color}Error:${normal} '$cmd' is required but not installed. Please install it and try again." >&2
        exit 1
    fi
done

# Clear the screen
clear

print_banner() {
    figlet -f standard "Trackdown"
    echo -e "Track down an IP address geolocation\n"
    echo -e " Author: Haitham Aouati"
    echo -e " GitHub: ${underlined}github.com/haithamaouati${normal}\n"
}

print_banner

show_help() {
  echo "Usage: $0 -i <IP_ADDRESS>"
  echo
  echo "Options:"
  echo "  -i, --ip       IP address to geolocate"
  echo -e "  -h, --help     Show this help message\n"
  exit 0
}

# Parse args
IP=""
while [[ $# -gt 0 ]]; do
  case "$1" in
    -i|--ip)
      IP="$2"
      shift 2
      ;;
    -h|--help)
      show_help
      ;;
    *)
      echo "Unknown option: $1"
      show_help
      ;;
  esac
done

if [ -z "$IP" ]; then
  echo -e "[!] Missing IP address.\n"
  show_help
fi

API_URL="http://ip-api.com/json/$IP"

# Query the API
response=$(curl -s "$API_URL")
status=$(echo "$response" | jq -r '.status')

if [ "$status" == "success" ]; then
  echo "Query:        $(echo "$response" | jq -r '.query')"
  echo "Status:       $(echo "$response" | jq -r '.status')"
  echo "Country:      $(echo "$response" | jq -r '.country')"
  echo "CountryCode:  $(echo "$response" | jq -r '.countryCode')"
  echo "Region:       $(echo "$response" | jq -r '.region')"
  echo "RegionName:   $(echo "$response" | jq -r '.regionName')"
  echo "City:         $(echo "$response" | jq -r '.city')"
  echo "ZIP:          $(echo "$response" | jq -r '.zip')"
  echo "Latitude:     $(echo "$response" | jq -r '.lat')"
  echo "Longitude:    $(echo "$response" | jq -r '.lon')"
  echo "Timezone:     $(echo "$response" | jq -r '.timezone')"
  echo "ISP:          $(echo "$response" | jq -r '.isp')"
  echo "Organization: $(echo "$response" | jq -r '.org')"
  echo "AS:           $(echo "$response" | jq -r '.as')"
  echo ""
else
  echo "[!] Failed to retrieve data for IP: $IP"
  echo "Message: $(echo "$response" | jq -r '.message')"
  exit 2
fi
