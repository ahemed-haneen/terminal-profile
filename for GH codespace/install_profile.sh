# Fail on any command.
set -eux pipefail

# Install plug-ins (you can git-pull to update them later).

if [ -d "/home/codespace/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting" ]; then
	echo "zsh-syntax-highlighting already cloned"
else
	(cd ~/.oh-my-zsh/custom/plugins && git clone https://github.com/zsh-users/zsh-syntax-highlighting)
fi

if [ -d "/home/codespace/.oh-my-zsh/custom/plugins/zsh-autosuggestions/" ]; then
	echo "zsh-autosuggestions already cloned"
else
	(cd ~/.oh-my-zsh/custom/plugins && git clone https://github.com/zsh-users/zsh-autosuggestions)
fi

# Replace the configs with the saved one.
sudo cp ../configs/.zshrc ~/.zshrc

# Copy the modified Agnoster Theme
sudo cp ../configs/pixegami-agnoster.zsh-theme ~/.oh-my-zsh/themes/pixegami-agnoster.zsh-theme
