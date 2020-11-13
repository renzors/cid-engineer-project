#! /bin/bash
cp /var/www/nodeApp/nodeApp.service /etc/systemd/system
##add exceutable permissions to express app
sudo chmod +x /var/www/nodeApp/bin/www
##Allows any users to write the app folder. Useful if using fs within the app
sudo chmod go+w /var/www/nodeApp
##Launches the express app
sudo systemctl daemon-reload
sudo systemctl start nodeApp
sudo systemctl enable nodeApp