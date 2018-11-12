sudo sed -i '/mk_arcade_joystick_rpi/d' /etc/modprobe.d/mk_arcade_joystick_rpi.conf
lineCnt=$(cat /etc/modprobe.d/mk_arcade_joystick_rpi.conf | wc -l)
if [ $lineCnt -eq 0 ]
then
	sudo sh -c "echo 'options mk_arcade_joystick_rpi map=1,2' > /etc/modprobe.d/mk_arcade_joystick_rpi.conf"
else
	sudo perl -p -i -e '$.==1 and print "options mk_arcade_joystick_rpi map=1,2\n"' /etc/modprobe.d/mk_arcade_joystick_rpi.conf
fi

cp -f /home/pi/RetroPie/retropiemenu/icons/gpio/2pOn/* /home/pi/RetroPie/retropiemenu/icons/