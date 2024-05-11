apt-get -y update
apt-get -y upgrade
apt-get -y autopurge

apt-get -y install language-pack-ja-base language-pack-ja
update-locale LANG=ja_JP.UTF-8 LANGUAGE="ja_JP:ja"
source /etc/default/locale
useradd --password "pass" --create-home atsushi
apt-get -y install sudo
gpasswd -a atsushi sudo
DEBIAN_FRONTEND=noninteractive apt-get -y install tzdata
ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

# apt-get -y install ubuntu-desktop-minimal task-gnome-desktop task-japanese-gnome-desktop language-pack-gnome-ja-base language-pack-gnome-ja gnome-user-docs-ja fonts-noto-cjk-extra
apt-get -y install ubuntu-desktop-minimal task-xfce-desktop task-japanese-desktop fonts-noto-cjk-extra

# systemctl start gdm3
systemctl start lightdm
echo "Start Gnome!"

apt-get -y install xrdp
systemctl enable xrdp
echo "Setup Finish!"
xrdp