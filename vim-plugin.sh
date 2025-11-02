#!/bin/bash


# === COLORS ===
RED="\033[0;31m"
GREEN="\033[0;32m"
YELLOW="\033[1;33m"
MAGENTA="\033[0;35m"
BLUE="\033[0;34m"
CYAN="\033[0;36m"
BOLD="\033[1m"
RESET="\033[0m"   # Reset to default col

print_line() {
    printf "${MAGENTA}%s${RESET}\n" "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
}

set -e  # Exit immediately if a command fails
print_line
echo -e "🚀 Setting up NERDTree for Vim..."

echo -e "${BLUE}📁 Creating plugin directory...${RESET}"
mkdir -p ~/.vim/pack/plugins/start

echo -e "${CYAN}📂 Changing to plugin directory...${RESET}"
cd ~/.vim/pack/plugins/start

echo -e "${GREEN} 🌳 Cloning NERDTree plugin (this may take a few seconds)... ${RESET}"
git clone  https://github.com/preservim/nerdtree.git

echo -e "${YELLOW} ⚙️  Configuring Vim to start NERDTree automatically...${RESET}"
# Use '>>' to append, or '>' to overwrite
echo "autocmd VimEnter * NERDTree" >> ~/.vimrc

echo -e "✅ Installation complete!"
echo -e "${GREEN}💡 Run 'vim' to test if NERDTree opens automatically.${RESET}"
print_line
echo 
echo -e "🚀 Setting up gruvbox for Vim..."

echo -e "${CYAN}📂 Changing to plugin directory...${RESET}"
cd ~/.vim/pack/plugins/start

echo -e "${GREEN} 🌳 Cloning gruvbox plugin (this may take a few seconds)... ${RESET}"
git clone  https://github.com/morhetz/gruvbox.git


echo -e "${YELLOW} ⚙️  Configuring Vim to start gruvbox automatically...${RESET}"

cat << EOF >> ~/.vimrc
syntax enable
set termguicolors
set background=dark
let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox 
EOF

echo -e "✅ Installation complete!"
print_line