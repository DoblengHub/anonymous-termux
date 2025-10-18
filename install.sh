#!/bin/bash
# INSTALLER - ANONYMOUS Termux Style by Dobleng Genz

clear
echo "🔰 Installing ANONYMOUS Termux Style..."
sleep 1

# Copy files
mkdir -p ~/.termux
cp banner.sh ~/.termux/anonymous_banner.sh
cp colors.properties ~/.termux/colors.properties

chmod +x ~/.termux/anonymous_banner.sh

# Tambahkan banner otomatis ke bashrc
grep -qxF '[ -t 1 ] && [ -f "$HOME/.termux/anonymous_banner.sh" ] && bash "$HOME/.termux/anonymous_banner.sh"' ~/.bashrc || \
echo '[ -t 1 ] && [ -f "$HOME/.termux/anonymous_banner.sh" ] && bash "$HOME/.termux/anonymous_banner.sh"' >> ~/.bashrc

echo ""
echo "✅ ANONYMOUS Termux Style Installed!"
echo "🔹 User : Dobleng"
echo "🔹 Lokasi : Tangerang"
echo "Buka ulang Termux untuk melihat hasilnya!"