#We can see if the system has any configured swap by typing:
sudo swapon --show

#You can verify that there is no active swap using the free utility
free -h

#Check Available Space on the Hard Drive Partition
df -h

#Create a Swap File ((It take 1GB For swap)
sudo fallocate -l 1G /swapfile

#We can verify that the correct amount of space was reserved by typing
ls -lh /swapfile

#Enabling the Swap File
sudo chmod 600 /swapfile

#Verify the permissions change by typing
ls -lh /swapfile

#We can now mark the file as swap space by typing
sudo mkswap /swapfile

#We can verify that the swap is available by typing
sudo swapon --show
