# installer visual studio code depuis ubuntu software

sudo apt update
sudo apt upgrade -y
sudo apt install -y git-all
sudo apt install -y emacs
echo "source /opt/ros/humble/setup.bash" >> ~/.bashrc

sudo apt install -y ros-humble-desktop
echo "source /opt/ros/humble/setup.bash" >> ~/.bashrc
source ~/.bashrc
sudo apt install -y ros-humble-turtlebot4-desktop
mkdir -p ~/turtlebot4_ws/src
cd ~/turtlebot4_ws/src
git clone https://github.com/turtlebot/turtlebot4.git -b humble
cd ~/turtlebot4_ws
rosdep install --from-path src -yi --rosdistro humble
source /opt/ros/humble/setup.bash
colcon build --symlink-install
