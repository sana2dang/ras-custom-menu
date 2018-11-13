sudo sed -i '/dtparam=audio=on/d' /boot/config.txt
sudo sed -i '/dtoverlay=hifiberry-dac/d' /boot/config.txt
sudo sh -c "echo 'dtoverlay=hifiberry-dac' >> /boot/config.txt"
cp -f /home/pi/RetroPie/retropiemenu/icons/dachdmi/dacOn/* /home/pi/RetroPie/retropiemenu/icons/
#sudo reboot