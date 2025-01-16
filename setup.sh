sudo apt update && sudo apt upgrade
sudo apt install ufw nodejs npm nginx certbot python3-certbot-nginx docker.io

sudo cp youssefelzein.com /etc/nginx/sites-available/youssefelzein.com
sudo ln -s /etc/nginx/sites-available/youssefelzein.com /etc/nginx/sites-enabled/

sudo cp start-server.service /etc/systemd/system/
sudo cp start-moon-trek-server.service /etc/systemd/system/

sudo mkdir -p /var/www/youssefelzein.com/moon-trek/html
sudo mkdir /var/www/youssefelzein.com/html
sudo chmod -R 755 /var/www/youssefelzein.com

cd server && npm install
cd ../client && npm install && npm run build
sudo cp -r dist/* /var/www/youssefelzein.com/html/

git clone https://github.com/youssefe95/moon-trek-jpl-horizon ~/moon-trek-jpl-horizon
cd ~/moon-trek-jpl-horizon/server && npm install
cd ../client
sed -i "s|http://localhost:8890|https://youssefelzein.com|g" src/App.vue
npm install && npm run build
sudo cp -r dist/* /var/www/youssefelzein.com/moon-trek/html/

sudo systemctl enable start-server.service
sudo systemctl enable start-moon-trek-server.service

sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow ssh
sudo ufw allow http
sudo ufw allow https
sudo ufw allow 'Nginx Full'
sudo ufw enable

sudo systemctl enable ufw
sudo systemctl start ufw
sudo systemctl enable nginx
sudo systemctl start nginx

sudo certbot --nginx -d youssefelzein.com -d www.youssefelzein.com
