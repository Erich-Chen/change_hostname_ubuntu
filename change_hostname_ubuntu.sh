OLD_HOSTNAME=$(hostname)

if [ -n "$1" ]; then 
    NEW_HOSTNAME=$1;
else
    echo 'Please enter a new hostname'
    read NEW_HOSTNAME
fi

sudo sed -i "s/$OLD_HOSTNAME/NEW_HOSTNAME/g" /etc/hosts
sudo sed -i "s/$OLD_HOSTNAME/NEW_HOSTNAME/g" /etc/hostname
hostname $NEW_HOSTNAME

echo "Your new hostname is $NEW_HOSTNAME"
