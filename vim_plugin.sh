#!/bin/bash


# === COLORS ===
RED="\033[0;31m"
GREEN="\033[0;32m"
YELLOW="\033[1;33m"
BLUE="\033[0;34m"
CYAN="\033[0;36m"
BOLD="\033[1m"
RESET="\033[0m"   # Reset to default col


set -e  # Exit immediately if a command fails

echo "🚀 Setting up NERDTree for Vim..."

echo -e "${BLUE}📁 Creating plugin directory...${RESET}"
mkdir -p ~/.vim/pack/plugins/start

echo "${CYAN}📂 Changing to plugin directory...${RESET}"
cd ~/.vim/pack/plugins/start

echo "${GREEN} 🌳 Cloning NERDTree plugin (this may take a few seconds)... ${RESET}"
git clone  https://github.com/preservim/nerdtree.git

echo "${YELLOW} ⚙️  Configuring Vim to start NERDTree automatically...${RESET}"
# Use '>>' to append, or '>' to overwrite
echo "autocmd VimEnter * NERDTree" >> ~/.vimrc

echo "✅ Installation complete!"
echo "${GREEN}💡 Run 'vim' to test if NERDTree opens automatically.${RESET}"
