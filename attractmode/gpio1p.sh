sudo sed -i '/mk_arcade_joystick_rpi/d' /etc/modprobe.d/mk_arcade_joystick_rpi.conf
lineCnt=$(cat /etc/modprobe.d/mk_arcade_joystick_rpi.conf | wc -l)
if [ $lineCnt -eq 0 ]
then
	sudo sh -c "echo 'options mk_arcade_joystick_rpi map=1' > /etc/modprobe.d/mk_arcade_joystick_rpi.conf"
else
	sudo perl -p -i -e '$.==1 and print "options mk_arcade_joystick_rpi map=1\n"' /etc/modprobe.d/mk_arcade_joystick_rpi.conf
fi

cp -f /opt/retropie/configs/all/attractmode/Attract\ Mode\ Setup/icon/gpio/1pOn/* /opt/retropie/configs/all/attractmode/Attract\ Mode\ Setup/icon/