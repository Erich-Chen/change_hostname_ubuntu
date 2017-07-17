OLD_HOSTNAME=$(hostname)

if [ -n "$1" ]; then 
    NEW_HOSTNAME=$1;
else
    echo 'Please enter a new hostname'
    read NEW_HOSTNAME
fi

sudo hostname $NEW_HOSTNAME
sudo sed -i "/$127.0.1.1 */127.0.1.1\t$NEW_HOSTNAME" /etc/hosts
sudo sed -i "s/$OLD_HOSTNAME/$NEW_HOSTNAME/g" /etc/hostname

echo "The hostname is $NEW_HOSTNAME now"
