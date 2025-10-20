sudo apt-get update
sudo apt-get upgrade

# Install Docker
curl -fsSL https://get.docker.com | sh
sudo apt-get install -y uidmap chromium-browser ufw



sudo raspi-config
sudo ufw allow 443/tcp
sudo netstat -tlnp | grep :443
sudo ss -tlnp | grep :443




.config/autostart/chromium.desktop:
```
[Desktop Entry]
Type=Application
Exec=chromium-browser --password-store=basic --noerrdialogs --disable-infobars --kiosk https://swissbank.tlsnotary.org/dashboard
Hidden=false
X-GNOME-Autostart-enabled=true
Name=Chromium Kiosk
```
