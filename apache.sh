user_data = base64encode(<<-EOF
#!/bin/bash
apt update -y
apt install apache2 git -y
systemctl start apache2
systemctl enable apache2
cd /var/www/html
rm -f index.html
git clone https://github.com/karishma1521success/swiggy-clone.git
cp -r swiggy-clone/* .
chown -R www-data:www-data /var/www/html
chmod -R 755 /var/www/html
systemctl restart apache2
EOF
)
