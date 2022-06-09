apt install zsh
chsh -s /usr/bin/zsh root
apt install wget git
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
source ~/.zshrc
git clone https://github.com/bhilburn/powerlevel9k.git ~/powerlevel9k
echo 'source  ~/powerlevel9k/powerlevel9k.zsh-theme' >> ~/.zshrc
echo "Installing fd\n"
wget -q https://script.install.devinsideyou.com/fd
sudo chmod +x fd && ./fd
echo "Installing fzf\n"
wget -q https://script.install.devinsideyou.com/fzf
chmod +x fzf && ./fzf

echo "# fzf" >> /root/.profile
echo "export FZF_DEFAULT_COMMAND='fd --type f --color=never --hidden'" >> /root/.profile 
echo "export FZF_DEFAULT_OPTS='--no-height --color=bg+:#343d46,gutter:-1,pointer:#ff3c3c,info:#0dbc79,hl:#0dbc79,hl+:#23d18b'" >> /root/.profile

echo "export FZF_CTRL_T_COMMAND=\"$FZF_DEFAULT_COMMAND\"" >> /root/.profile
echo "export FZF_CTRL_T_OPTS=\"--preview 'bat --color=always --line-range :50 {}'\"" >> /root/.profile

echo "export FZF_ALT_C_COMMAND='fd --type d . --color=never --hidden'" >> /root/.profile
echo "export FZF_ALT_C_OPTS=\"--preview 'tree -C {} | head -50'\"" >> /root/.profile
