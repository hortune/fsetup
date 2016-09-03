#!/bin/bash
wget -qO- https://raw.githubusercontent.com/xtuple/nvm/master/install.sh | sudo bash
sudo nvm install v6.5.0
#echo "export NVM_DIR=\"\$HOME/.nvm\"" >> ~/.bashrc
#echo "[ -s \"\$NVM_DIR/nvm.sh\" ] && . \"\$NVM_DIR/nvm.sh\"" >> ~/.bashrc  # 讀取 NVM
