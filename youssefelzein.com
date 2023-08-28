server {
        listen 80;
        listen [::]:80;

        root /var/www/youssefelzein.com/html;

        error_page 404 /;
        index index.html index.htm index.nginx-debian.html;

        server_name youssefelzein.com www.youssefelzein.com;

        location / {
                try_files $uri $uri/ =404;
        }

        location /api {
            proxy_pass http://localhost:8888;
        }

        location /file {
            proxy_pass http://localhost:8888;
        }
}
