# Tested on Rasbperry Pi with Ubuntu 20.04
# Docker option https://forum.developer.parrot.com/t/official-olympe-docker-image/16369
# https://blog.fearcat.in/a?ID=01800-d12ca3ac-2f2b-4e26-a5c3-275674efa050
sudo apt update && sudo apt install software-properties-common && sudo add-apt-repository ppa:deadsnakes/ppa && sudo apt install python3.9&& sudo apt install python3.8;
echo "Installing updates & setup for python apt..."; 
sudo rm -f /usr/bin/python && sudo ln -s /usr/bin/python3.9 /usr/bin/python;
sudo apt-get install python3.10-distutils;
echo "Installing pip..."; 
(sudo apt install python3-pip);
echo "Adding symlink to pip..."; 
(sudo ln -s /usr/bin/pip3 /usr/bin/pip);
echo "Install Ubuntu dependencies";
sudo apt-get install libgl1;
sudo apt-get install libpq-dev libxml2-dev libxslt1-dev libldap2-dev libsasl2-dev libffi-dev;
sudo apt install build-essential;
pip install pyzmq protobuf piexif;
pip install clang==6.0.0.2;
pip grpcio-tools;
pip install pyparsing;
pip install --upgrade aenum==2.2.5;
echo "Install Olympe";
pip install parrot-olympe;
echo "Test Olympe";
python -c 'import olympe; print("Installation OK")';
