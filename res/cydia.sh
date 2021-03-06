#!/bin/sh

cp -r /lib /private/var/
rm -rf /lib
dpkg -r cydia-sources
dpkg --force all -i /debs/apt7-key_0.7.25.3-3_iphoneos-arm.deb
dpkg --force all -i /debs/apt7-ssl_0.7.25.3-3_iphoneos-arm.deb
dpkg --force all -i /debs/apt7_0.7.25.3-8_iphoneos-arm.deb
dpkg --force all -i /debs/apt7-lib_0.7.25.3-13_iphoneos-arm.deb
dpkg --force all -i /debs/bash_4.0.17-13_iphoneos-arm.deb
dpkg --force all -i /debs/firmware-sbin_0-1_iphoneos-arm.deb
dpkg --force all -i /debs/base_1-4_iphoneos-arm.deb
dpkg --force all -i /debs/berkeleydb_4.6.21-4p_iphoneos-arm.deb
dpkg --force all -i /debs/coreutils_8.12-12p_iphoneos-arm.deb
dpkg --force all -i /debs/coreutils-bin_8.12-7p_iphoneos-arm.deb
dpkg --force all -i /debs/curl_7.33.0-8_iphoneos-arm.deb
dpkg --force all -i /debs/darwintools_1-4_iphoneos-arm.deb
dpkg --force all -i /debs/dpkg_1.14.25-9_iphoneos-arm.deb
dpkg --force all -i /debs/debianutils_3.3.3ubuntu1-1p_iphoneos-arm.deb
dpkg --force all -i /debs/diffutils_2.8.1-6_iphoneos-arm.deb
dpkg --force all -i /debs/diskdev-cmds_421.7-4_iphoneos-arm.deb
dpkg --force all -i /debs/essential_0-1_iphoneos-arm.deb
dpkg --force all -i /debs/file-cmds_220.7-3_iphoneos-arm.deb
dpkg --force all -i /debs/findutils_4.2.33-6_iphoneos-arm.deb
dpkg --force all -i /debs/gettext_0.17-6_iphoneos-arm.deb
dpkg --force all -i /debs/gnupg_1.4.8-4_iphoneos-arm.deb
dpkg --force all -i /debs/grep_2.5.4-3_iphoneos-arm.deb
dpkg --force all -i /debs/lzma_4.32.7-4_iphoneos-arm.deb
dpkg --force all -i /debs/openssh_6.1p1-11_iphoneos-arm.deb
dpkg --force all -i /debs/openssl_0.9.8y-10_iphoneos-arm.deb
dpkg --force all -i /debs/pam_32.1-3_iphoneos-arm.deb
dpkg --force all -i /debs/pam-modules_36.1-4_iphoneos-arm.deb
dpkg --force all -i /debs/pcre_8.30-5p_iphoneos-arm.deb
dpkg --force all -i /debs/profile.d_0-2_iphoneos-arm.deb
dpkg --force all -i /debs/readline_6.0-7_iphoneos-arm.deb
dpkg --force all -i /debs/sed_4.1.5-7_iphoneos-arm.deb
dpkg --force all -i /debs/shell-cmds_118-6_iphoneos-arm.deb
dpkg --force all -i /debs/system-cmds_433.4-12_iphoneos-arm.deb
dpkg --force all -i /debs/apr-lib_1.3.3-2_iphoneos-arm.deb
dpkg --force all -i /debs/apr-util_1.2.12-9_darwin-arm.deb
dpkg --force all -i /debs/adv-cmds_119-5_iphoneos-arm.deb
dpkg --force all -i /debs/org.thebigboss.repo.icons_1.0.deb
dpkg --force all -i /debs/uikittools_1.1.8_iphoneos-arm.deb
dpkg --force all -i /debs/sqlite3-lib_3.5.9-2_iphoneos-arm.deb
dpkg --force all -i /debs/syslogd_1.0.2586-2_iphoneos-arm.deb
dpkg --force all -i /debs/mobilesubstrate.deb
dpkg --force all -i /debs/ploader.deb
dpkg --force all -i /debs/safemode.deb
dpkg --force all -i /debs/ncurses_5.7-13_iphoneos-arm.deb
dpkg --force all -i /debs/su-justforgui.deb
dpkg --force all -i /debs/bzip2_1.0.5-7_iphoneos-arm.deb
dpkg --force all -i /debs/gzip_1.6-7_iphoneos-arm.deb
dpkg --force all -i /debs/tar_1.19-8_iphoneos-arm.deb
dpkg --force all -i /debs/unzip_5.52-5p_iphoneos-arm.deb
dpkg --force all -i /debs/wget_1.11-3p_iphoneos-arm.deb
dpkg --force all -i /debs/zip_2.32-5p_iphoneos-arm.deb
dpkg --force all -i /debs/cydia_1.1.12_iphoneos-arm.deb
dpkg --force all -i /debs/cydia-lproj_1.1.12_iphoneos-arm.deb
dpkg --configure -a
rm -rf /debs
cd /Applications/Cydia.app
chmod 6775 MobileCydia
chown root:wheel MobileCydia
su -c uicache mobile
rm -rf /var/mobile/Library/Caches
cp -apr /Library/Frameworks/CydiaSubstrate.framework /System/Library/Frameworks/
mv /Library/Frameworks/CydiaSubstrate.framework /Library/Frameworks/CydiaSubstrate.framework_
ln -sf /System/Library/Frameworks/CydiaSubstrate.framework /Library/Frameworks/CydiaSubstrate.framework
cp -apr /Library/MobileSubstrate /System/Library/
mv /Library/MobileSubstrate /Library/MobileSubstrate_
ln -sf /System//Library/MobileSubstrate /Library/MobileSubstrate
cp -apr /var/mobile/Library/Preferences /System/Library/
mv /var/mobile/Library/Preferences /var/mobile/Library/Preferences_
ln -sf /System/Library/Preferences /var/mobile/Library/Preferences
rm -rf /mnt1/System/Library/LaunchDaemons/com.xff.cydiainstall.plist
kill 1