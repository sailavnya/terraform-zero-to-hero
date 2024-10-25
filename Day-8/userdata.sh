#!/bin/bash
# Update and install Apache
apt update
apt install -y apache2

# Retrieve instance ID
INSTANCE_ID=$(curl -s http://169.254.169.254/latest/meta-data/instance-id)

# Install AWS CLI
apt install -y awscli

# Create a basic HTML file
cat <<EOF > /var/www/html/index.html
<!DOCTYPE html>
<html>
<head>
  <title>My Page</title>
</head>
<body>
  <h1>My name is bubu</h1>
  <p>dudu hi cheptunnadu</p>
</body>
</html>
EOF

# Start and enable Apache
systemctl start apache2
systemctl enable apache2
