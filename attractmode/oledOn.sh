sudo sed -i '/RetroPie-OLED/d' /opt/retropie/configs/all/autostart.sh
lineCnt=$(cat /opt/retropie/configs/all/autostart.sh | wc -l)
if [ $lineCnt -eq 0 ]
then
	sudo sh -c "echo '/usr/bin/python /home/pi/RetroPie-OLED/RetroPie-OLED.py &' > /opt/retropie/configs/all/autostart.sh"
else
	sudo sed -i '1a\\/usr/bin/python /home/pi/RetroPie-OLED/RetroPie-OLED.py &' /opt/retropie/configs/all/autostart.sh
fi

cp -f /opt/retropie/configs/all/attractmode/Attract\ Mode\ Setup/icon/oled/on/* /opt/retropie/configs/all/attractmode/Attract\ Mode\ Setup/icon/