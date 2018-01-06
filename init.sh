sudo chmod 777 /home/box/web/
sudo chmod 777 /home/box/web/*

sudo /etc/init.d/nginx restart
sudo rm /etc/nginx/sites-enabled/default
sudo ln -s /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/test.conf
sudo ln -s /home/box/web/etc/gunicorn.conf   /etc/gunicorn.d/hello
sudo ln -s /home/box/web/etc/gunidjanga.conf   /etc/gunicorn.d/gunidjanga
#sudo ln -s /home/box/web/etc/hello.py   /etc/gunicorn.d/gunicorn.conf
sudo /etc/init.d/gunicorn restart
#sudo /etc/init.d/mysql start


