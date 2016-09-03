#!/bin/bash
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.30.1/install.sh | bash

echo "export NVM_DIR=\"\$HOME/.nvm\"" >> ~/.bashrc
echo "[ -s \"\$NVM_DIR/nvm.sh\" ] && . \"\$NVM_DIR/nvm.sh\"" >> ~/.bashrc  # 讀取 NVM
