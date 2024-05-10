apt -y update
apt -y upgrade
apt -y autopurge

apt -y install language-pack-ja-base language-pack-ja
update-locale LANG=ja_JP.UTF-8 LANGUAGE="ja_JP:ja"
source /etc/default/locale

useradd --password "pass" --create-home atsushi
apt -y install sudo tzdata
gpasswd -a atsushi sudo

apt -y install ubuntu-desktop-minimal task-gnome-desktop task-japanese-gnome-desktop language-pack-gnome-ja-base language-pack-gnome-ja gnome-user-docs-ja fonts-noto-cjk-extra
#apt -y install libreoffice-help-ja libreoffice-l10n-ja thunderbird-locale-ja

apt -y install xrdp
systemctl enable xrdp