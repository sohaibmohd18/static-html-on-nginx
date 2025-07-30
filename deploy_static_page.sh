#!/bin/bash

# Exit on any error
set -e

HTML_SOURCE="./index.html"
DEST_DIR="/var/www/html"
NGINX_SERVICE="nginx"

# Ensure running as root
if [[ $EUID -ne 0 ]]; then
  echo "Please run this script as root or with sudo."
  exit 1
fi

# Check if Nginx is installed
if ! command -v nginx >/dev/null 2>&1; then
  echo "Nginx is not installed. Installing Nginx..."
  apt update && apt install -y nginx
fi

# Backup existing index.html (optional)
if [ -f "$DEST_DIR/index.html" ]; then
  mv "$DEST_DIR/index.html" "$DEST_DIR/index.backup.html"
fi

# Copy new HTML file
cp "$HTML_SOURCE" "$DEST_DIR/index.html"

# Set correct permissions
chown www-data:www-data "$DEST_DIR/index.html"
chmod 644 "$DEST_DIR/index.html"

# Restart Nginx
systemctl restart "$NGINX_SERVICE"

echo "✅ Static LinkedIn-style page deployed successfully!"
echo "Visit: http://localhost or your server's IP address."
