#######################################
echo "SET UP DEBIAN BOX" ##############
#######################################

# update/upgrade the debian box without asking for confirmation
sudo apt-get update && sudo apt-get -y upgrade

#######################################
echo "INSTALL APPLICATIONS" ###########
#######################################

# install software without asking for confirmation
sudo apt-get --assume-yes install irssi git lynx mutt finger tmux tree vim


#######################################
echo "SET UP APACHE" ##################
#######################################

# install apache
sudo apt-get --assume-yes install apache2

# install `UserDir` module
sudo a2enmod userdir

# restart Apache
service apache2 restart

#######################################
#echo "SET UP POSTFIX" #################
#######################################

# install postfix
# sudo apt-get --assume-yes install postfix


#######################################
echo "SET UP USER DEFAULTS" ###########
#######################################

# navigate to `/etc/skel` to set up a users folder
cd /etc/skel/

# make `.ssh`
mkdir .ssh
# drwx------
chmod 700 .ssh

# make `.ssh/authorized_keys`
touch .ssh/authorized_keys
# -rw-r--r--
chmod 644 .ssh/authorized_keys

# make `public_html`
mkdir public_html
# drwxr-xr-x
chmod 755 public_html

# make `mail`
mkdir mail
# drwx------
chmod 700 mail

# make `public_html/index.html`
touch public_html/index.html
# -rw-r--r-
chmod 644 public_html/index.html

# make `.irssi` folder
mkdir .irssi
# drwx------
chmod 700 .irssi
