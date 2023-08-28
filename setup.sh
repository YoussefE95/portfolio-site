sudo apt update && sudo apt upgrade
sudo apt install nodejs npm nginx certbot python3-certbot-nginx

cd server/api/lotr/ && npm install
cp sample.config.json config.json

cd ../../ && npm install

cd ../client && npm install && npm run build
sudo mkdir -p /var/www/youssefelzein.com/html
sudo chmod -R 755 /var/www/youssefelzein.com
sudo cp -r dist/* /var/www/youssefelzein.com/html/

cd ../

sudo cp youssefelzein.com /etc/nginx/sites-available/youssefelzein.com
sudo ln -s /etc/nginx/sites-available/youssefelzein.com /etc/nginx/sites-enabled/

sudo cp start-server.service /etc/systemd/system/
sudo systemctl enable start-server.service

sudo systemctl enable nginx
sudo systemctl start nginx
sudo systemctl enable ufw
sudo systemctl start ufw
sudo ufw allow 'Nginx Full'

sudo certbot --nginx -d youssefelzein.com -d www.youssefelzein.com
