################
# DEV PACKAGES #
################

if [ -d ~/.oh-my-zsh ] 
then
    # THEMES
    cd ~/.oh-my-zsh/custom/themes
    #git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
    git clone https://github.com/romkatv/powerlevel10k.git

    # PLUGINS
    cd ~/.oh-my-zsh/plugins
    git clone https://github.com/zsh-users/zsh-autosuggestions.git
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git

    ## EDITAR .zshrc
    sed -i '/^plugins=(git)/c\plugins=(git zsh-autosuggestions zsh-syntax-highlighting)' ~/.zshrc
    sed -i '/^# ENABLE_CORRECTION="true"/c\ENABLE_CORRECTION="true"' ~/.zshrc
    sed -i '/^ZSH_THEME="robbyrussell"/c\ZSH_THEME="powerlevel10k/powerlevel10k"' ~/.zshrc

else
    #ZSH
    sudo pacman --noconfirm -Syy zsh git curl

    #ZSH OH-MY-ZSH
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# INSTALL NODEJS Y NPM
sudo pacman --noconfirm -Syy nodejs npm
sudo pacman --noconfirm -Syy nodejs-express

mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
