# Taken from https://calebschoepp.com/blog/2021/how-to-setup-oh-my-posh-on-ubuntu/

# Tidy
sudo apt update
sudo apt upgrade

# Dep. Check

sudo apt install wget unzip

# Install Oh my Posh
sudo wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64 -O /usr/local/bin/oh-my-posh
sudo chmod +x /usr/local/bin/oh-my-posh

# Download the themes
mkdir ~/.poshthemes
wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/themes.zip -O ~/.poshthemes/themes.zip
unzip ~/.poshthemes/themes.zip -d ~/.poshthemes
chmod u+rw ~/.poshthemes/*.json
rm ~/.poshthemes/themes.zip

# Now set your theme like this eval "$(oh-my-posh --init --shell bash --config ~/.{theme}.omp.json)"

# Write it to your .bashrc or .bash_profile