################
# DEV PACKAGES #
################

if [ -f /usr/bin/curl ] 
    then echo "curl ya esta instalado." 
    else  
    #INSTALL curl
    sudo pacman --noconfirm -Syy curl
fi

if [ -f /usr/bin/git ] 
    then echo "git ya esta instalado." 
    else  
    #INSTALL git
    sudo pacman --noconfirm -Syy git
fi

if [ -f /usr/bin/zsh ] 
    then echo "zsh ya esta instalado." 
    else  
    #INSTALL zsh
    sudo pacman --noconfirm -Syy zsh
fi


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

    #ZSH OH-MY-ZSH
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi


if [ -f /usr/bin/node ] 
    then echo "nodejs ya esta instalado." 
    else  
    #INSTALL NODEJS
    sudo pacman --noconfirm -Syy nodejs
fi

if [ -f /usr/bin/npm ] 
    then echo "npm ya esta instalado." 
    else  
        #INSTALL NPM
        sudo pacman --noconfirm -Syy npm
fi

mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
