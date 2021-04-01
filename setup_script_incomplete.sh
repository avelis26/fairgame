sudo apt update && sudo apt upgrade -y
sudo apt install -y build-essential tk-dev libreadline-dev libdb5.3-dev libgdbm-dev libsqlite3-dev libssl-dev libbz2-dev libexpat1-dev liblzma-dev zlib1g-dev libffi-dev libxslt1-dev rustc libjpeg-dev zlib1g-dev libfreetype6-dev libopenjp2-7 libtiff5 libncurses5-dev libncursesw5-dev chromium-chromedriver liblcms2-dev
version=3.8.8
wget https://www.python.org/ftp/python/$version/Python-$version.tgz
tar zxf Python-$version.tgz
cd Python-$version
./configure --enable-optimizations
make -j4
sudo make altinstall
cd ..
sudo python3.8 -m pip install --upgrade pip
sudo mkdir -p /mnt/usbdrive
sudo chown $USER: /mnt/usbdrive
sudo cp /etc/fstab /etc/fstab.backup
sudo sh -c "echo \"/dev/sda /mnt/usbdrive ext4 auto,nofail,sync,users,rw 0 0\" >> /etc/fstab"
update
echo 'alias ls="ls -lAph --color=always"' >> ~/.bashrc
echo 'alias ll="ls -lAph --color=always"' >> ~/.bashrc
echo 'alias update="sudo apt update -y && sudo apt full-upgrade -y && sudo apt autoremove -y"' >> ~/.bashrc
source ~/.bashrc
sudo dd if=/dev/mmcblk0 conv=sync,noerror bs=64K | gzip -c > /mnt/usbdrive/20210401_Python_3.8.8+chromium-chromedriver.gz
# https://www.cyberciti.biz/faq/unix-linux-dd-create-make-disk-image-commands/
---------------SNAPSHOT---------------
mkdir sources
cd ./sources
git clone git@github.com:avelis26/fairgame.git
cd fairgame/
git switch dev


