echo "get .bash.profile"
wget -q https://raw.githubusercontent.com/superwificlub/superwifi.club/master/dotfiles/.bash_profile -O /etc/skel/.bash_profile
echo "get .bashrc"
wget -q https://raw.githubusercontent.com/superwificlub/superwifi.club/master/dotfiles/.bashrc -O /etc/skel/.bashrc
echo "get .gitconfig"
wget -q https://raw.githubusercontent.com/superwificlub/superwifi.club/master/dotfiles/.gitconfig -O /etc/skel/.gitconfig
echo "get .gitignore_global"
wget -q https://raw.githubusercontent.com/superwificlub/superwifi.club/master/dotfiles/.gitignore_global -O /etc/skel/.gitignore_global
echo "get .plan"
wget -q https://raw.githubusercontent.com/superwificlub/superwifi.club/master/dotfiles/.plan -O /etc/skel/.plan
echo "get .muttrc"
wget -q https://raw.githubusercontent.com/superwificlub/superwifi.club/master/dotfiles/.muttrc -O /etc/skel/.muttrc
