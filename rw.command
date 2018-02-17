sshpass -p alpine ssh -p 2022 root@localhost mount.sh
sshpass -p alpine ssh -p 2022 root@localhost rm /mnt1/private/etc/fstab
sshpass -p alpine scp -P 2022 /Applications/XAMPP/xamppfiles/htdocs/OpenWeb/res/fstab root@localhost:/mnt1/private/etc
exit