OLD_HOSTNAME=$(hostname)

if [ -n "$1" ]; then 
    NEW_HOSTNAME=$1;
else
    echo 'Please enter a new hostname'
    read NEW_HOSTNAME
fi

sudo hostname $NEW_HOSTNAME
sudo cp /etc/hostname /etc/hostname.bak
sudo sed -i "s/.*/$NEW_HOSTNAME/g" /etc/hostname
sudo cp /etc/hosts /etc/hosts.bak
sudo sed -i "s/127.0.1.1.*/127.0.1.1\t$NEW_HOSTNAME/g" /etc/hosts

echo "The hostname is now applied as $NEW_HOSTNAME"
echo ""
echo "###### NOTE ######"
echo "1. your previous hostname was '$OLD_HOSTNAME'"
echo "2. Reboot is recommended to make sure hostname is permanently changed."
