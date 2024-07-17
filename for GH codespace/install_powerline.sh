# Fail on any command.
set -eux pipefail

# Install Powerline for VIM.
pip3 install --user powerline-status
sudo cp ../configs/.vimrc ~/.vimrc

if [ -d "./fonts" ]; then
    rm -rf fonts/
fi

git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh

cd ..
rm -rf fonts
