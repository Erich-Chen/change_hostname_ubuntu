OLD_HOSTNAME=$(hostname)

if [ -n "$1" ]; then 
    NEW_HOSTNAME=$1;
else
    echo 'Please enter a new hostname'
    read NEW_HOSTNAME
fi

sudo hostname $NEW_HOSTNAME
echo "1"
sudo sed -i "s/127.0.1.1.*/127.0.1.1\t$NEW_HOSTNAME/g" /etc/hosts
echo "2"
sudo sed -i "s/.*/$NEW_HOSTNAME/g" /etc/hostname
echo "3"

echo "The hostname is now applied as $NEW_HOSTNAME"
echo "###### NOTE ######"
echo "FYI: your previous hostname WAS $OLD_HOSTNAME"
echo "You may run this script again to change it back"

exec bash
