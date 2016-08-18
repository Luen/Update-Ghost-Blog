service ghost stop
cd /var/www/ghost
mkdir temp
cd temp/
curl -L -O https://ghost.org/zip/ghost-latest.zip
unzip ghost-latest.zip
cd ..
sudo cp temp/*.md temp/*.js temp/*.json .
sudo rm -R core
sudo cp -R temp/core .
sudo cp -R temp/content/themes/casper content/themes
sudo npm install --production
sudo rm -R temp
sudo chown -R ghost:ghost ./*
service ghost start
