output=$(gsettings get org.gnome.system.proxy mode);
if [[ $output = "'none'" ]]
then
    gsettings set org.gnome.system.proxy mode 'manual'
    echo Turned Proxy On
else
    gsettings set org.gnome.system.proxy mode 'none'
    echo Turned proxy Off
fi
