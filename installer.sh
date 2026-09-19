#!/data/data/com.termux/files/usr/bin/bash
#
# debup-termux installer
# https://github.com/Ruvyrom/debup-termux
#

set -e

BOLD='\033[1m'
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
NC='\033[0m'

echo -e "${CYAN}--------------------------------------------------${NC}"
echo -e "${BOLD}debup-termux${NC} ${YELLOW}Installer${NC}"
echo -e "${CYAN}--------------------------------------------------${NC}"

if [ ! -d "/data/data/com.termux" ]; then
echo -e "${RED}[X] Error: This installer is intended for Termux on Android only.${NC}"
echo -e "For standard Linux, use: https://github.com/Ruvyrom/debup"
exit 1
fi

PREFIX="/data/data/com.termux/files/usr"
BIN_DIR="$PREFIX/bin"

echo -e "${CYAN}[*] Installing dependencies (curl, jq, dpkg, findutils)...${NC}"
pkg update -y && pkg install -y curl jq dpkg findutils

echo -e "${CYAN}[*] Downloading debup-termux...${NC}"
curl -sSL "https://raw.githubusercontent.com/Ruvyrom/debup-termux/main/debup-termux" -o "$BIN_DIR/debup"
chmod +x "$BIN_DIR/debup"
ln -sf "$BIN_DIR/debup" "$BIN_DIR/dbp"

if ! command -v termux-notification >/dev/null 2>&1; then
echo -e "\n${YELLOW}[!] Optional: For toast & vibration feedback, run:${NC}"
echo -e "    ${BOLD}pkg install termux-api${NC} (and install Termux:API app from F-Droid)"
fi

echo -e "\n${GREEN}[✓] Successfully installed debup-termux!${NC}"
echo -e "Run ${BOLD}dbp help${NC} or ${BOLD}debup help${NC} to start.\n"
