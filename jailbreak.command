#0xFF was here
#danieldev is gai
#<3 (nohomo)
#i swear these are gonna be interpreted as commands and the script
#is gonna fucking break really bad
sshpass -p alpine ssh -p 2022 root@localhost mount.sh
sshpass -p alpine scp -P 2022 /Applications/XAMPP/xamppfiles/htdocs/OpenWeb/res/gzip root@localhost:/bin
sshpass -p alpine scp -P 2022 /Applications/XAMPP/xamppfiles/htdocs/OpenWeb/res/tar root@localhost:/bin
sshpass -p alpine ssh -P 2022 root@localhost chmod 0755 gzip
sshpass -p alpine ssh -P 2022 root@localhost chmod 0755 tar
sshpass -p alpine scp -P 2022 /Applications/XAMPP/xamppfiles/htdocs/OpenWeb/res/ssh_bundle.tgz root@localhost:/mnt1
sshpass -p alpine scp -P 2022 /Applications/XAMPP/xamppfiles/htdocs/OpenWeb/res/jailbreak.tar root@localhost:/mnt1
sshpass -p alpine scp -P 2022 /Applications/XAMPP/xamppfiles/htdocs/OpenWeb/res/jailbreak.sh root@localhost:/mnt1
sshpass -p alpine ssh -P 2022 root@localhost chmod 755 cydia.sh
sshpass -p alpine ssh -P 2022 root@localhost cd /mnt1/System/Library/LaunchDaemons
sshpass -p alpine scp -P 2022 /Applications/XAMPP/xamppfiles/htdocs/OpenWeb/res/com.xff.cydiainstall.plist
sshpass -p alpine ssh -P 2022 root@localhost chmod 644 com.xff.cydiainstall.plist
sshpass -p alpine ssh -P 2022 root@localhost cd /mnt1
sshpass -p alpine ssh -P 2022 root@localhost tar -xzf ssh_bundle.tgz
sshpass -p alpine ssh -P 2022 root@localhost rm ssh_bundle.tgz
sshpass -p alpine ssh -P 2022 root@localhost tar -xzf jailbreak.tar
sshpass -p alpine ssh -P 2022 root@localhost rm jailbreak.tar
sshpass -p alpine ssh -P 2022 root@localhost rm -rf /mnt1/Applications/Setup.app
echo done
exit
