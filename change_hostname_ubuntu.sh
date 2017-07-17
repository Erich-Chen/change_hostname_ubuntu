OLD_HOSTNAME=$(hostname)

if [ -n "$1" ]; then 
    NEW_HOSTNAME=$1;
else
    echo 'Please enter a new hostname'
    read NEW_HOSTNAME
fi

sudo hostname $NEW_HOSTNAME
sudo sed -i "s/.*/$NEW_HOSTNAME/g" /etc/hostname
sudo sed -i "s/127.0.1.1.*/127.0.1.1\t$NEW_HOSTNAME/g" /etc/hosts

echo "The hostname is now applied as $NEW_HOSTNAME"
echo "###### NOTE ######"
echo "FYI: your previous hostname was $OLD_HOSTNAME and saved in variable 'OLD_HOSTNAME'"
echo "You may run this script again to change it back"
echo ""
echo "Reboot is recommended to make sure hostname is permanently changed."
