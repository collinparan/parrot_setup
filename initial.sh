# Tested on Rasbperry Pi with Ubuntu 20.04
# Docker option https://forum.developer.parrot.com/t/official-olympe-docker-image/16369
# https://blog.fearcat.in/a?ID=01800-d12ca3ac-2f2b-4e26-a5c3-275674efa050
echo "Installing updates & setup for python apt..."; 
(sudo apt-get update && sudo apt install software-properties-common && sudo add-apt-repository ppa:deadsnakes/ppa);
sudo ln -s /usr/bin/python3.8 /usr/bin/python;
sudo ln -s /usr/bin/python3.8 /usr/bin/python3;
sudo apt-get install python3.8-distutils;
echo "Installing pip..."; 
(sudo apt install python3-pip);
echo "Adding symlink to pip..."; 
(sudo ln -s /usr/bin/pip3 /usr/bin/pip);
echo "Install Ubuntu dependencies";
sudo apt-get install libgl1;
sudo apt-get install libpq-dev libxml2-dev libxslt1-dev libldap2-dev libsasl2-dev libffi-dev;
sudo apt-get install python3.8-dev;
sudo apt install build-essential;
wget https://storage.googleapis.com/git-repo-downloads/repo -O /usr/bin/repo && chmod +x /usr/bin/repo;
pip install pyzmq protobuf piexif;
sudo apt-get install make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev libncurses5 xz-utils tk-dev libffi-dev liblzma-dev python3-openssl git libgdbm-dev libgdbm-compat-dev uuid-dev python3-gdbm gawk;
sudo apt-get install build-essential yasm cmake libtool libc6 libc6-dev unzip freeglut3-dev libglfw3 libglfw3-dev libjson-c-dev libcurl4-gnutls-dev libgles2-mesa-dev;
sudo apt-get install rsync;
sudo apt-get install libsdl2-dev libsdl2-2.0-0 libjpeg-dev libwebp-dev libtiff5-dev libsdl2-image-dev libsdl2-image-2.0-0 libfreetype6-dev libsdl2-ttf-dev libsdl2-ttf-2.0-0 libsdl2-gfx-dev;
mkdir -p ~/code/parrot-groundsdk && curl -L https://github.com/Parrot-Developers/olympe/releases/download/v7.3.0/parrot-olympe-src-7.3.0.tar.gz | tar zxf - -C ~/code/parrot-groundsdk --strip-components=1;
cd ~/code/parrot-groundsdk && ./build.sh -p olympe-linux -t build -j;
pip install clang==6.0.0.2;
pip install pyparsing;
echo "Install Olympe";
pip install parrot-olympe;
echo "Test Olympe";
python -c 'import olympe; print("Installation OK")';
