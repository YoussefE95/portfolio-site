server {
    listen 80;
    listen [::]:80;

    client_max_body_size 8M;

    root /var/www/youssefelzein.com/html;

    error_page 404 /;
    index index.html;

    server_name youssefelzein.com www.youssefelzein.com;

    location / {
        try_files $uri $uri/ =404;
    }

    location /static {
        proxy_pass http://localhost:8888;
    }

    location /moon-trek {
        proxy_pass http://localhost:8890;
    }

    location /moon-trek/demo {
        alias /var/www/youssefelzein.com/moon-trek/html;
        try_files $uri $uri/ =404;
    }
}
