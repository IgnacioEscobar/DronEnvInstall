# ROS Kinetic install for Ubuntu 16.4 (LTS)

# Setup sources.list
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

# Setup keys
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116

# update
sudo apt-get update

# Install ROS full
sudo apt install -y ros-kinetic-desktop-full

# Initialize rosdep
sudo rosdep init
rosdep update

# Enviroment setup
echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc
source ~/.bashrc

# Dependencies for building packages
sudo apt install -y python-rosinstall python-rosinstall-generator python-wstool build-essential
