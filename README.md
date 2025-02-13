# nav2_pyif_inter

Introduction

This project integrates SICNav (Safe Interactive Crowd Navigation) with NAV2 using Nav2_PYIF. The goal is to enable reinforcement learning-based navigation for the TurtleBot3 robot in a Gazebo simulation.

Installation (My repository is at step 5 now)
# 1. Clone the Required Repositories
```bash
cd ~/nav2_pyif_ws/src
git clone https://github.com/sepsamavi/safe-interactive-crowdnav.git
git clone https://github.com/DanelLepp/nav2_pyif.git
```
# 2. Install Dependencies
```bash
cd ~/nav2_pyif_ws/src/safe-interactive-crowdnav
pip install -e .
```
# 3. Verify Python Version (Must Be 3.10 for ROS 2 Humble)
```bash
python3 --version
```

# SICNav uses Python 3.8, but I am trying to install SICNav under Python 3.10
```bash
/usr/bin/python3.10 -m pip install -e .  # (Not working currently)
```

# 4. Add SICNav to Python Path
```bash
export PYTHONPATH=$PYTHONPATH:~/nav2_pyif_ws/src/safe-interactive-crowdnav
echo 'export PYTHONPATH=$PYTHONPATH:~/nav2_pyif_ws/src/safe-interactive-crowdnav' >> ~/.bashrc
source ~/.bashrc
```

# 5. Build the ROS 2 Workspace
```bash
cd ~/nav2_pyif_ws
colcon build --symlink-install
source install/setup.bash
```
# 6. Running the Simulation
```bash
export TURTLEBOT3_MODEL=waffle
source /opt/ros/humble/setup.bash
cd ~/nav2_pyif_ws
colcon build --symlink-install
source install/setup.bash
ros2 launch nav2_bringup tb3_simulation_launch.py headless:=False \
  params_file:=/home/ubuntu/nav2_pyif_ws/src/nav2_pyif/sicnav_python_example/params.yaml  # (Currently bugged)
```
If you encounter issues, use debug mode
```bash
export RCUTILS_LOGGING_SEVERITY_THRESHOLD=DEBUG
export TURTLEBOT3_MODEL=waffle
ros2 launch nav2_bringup tb3_simulation_launch.py headless:=False \
  params_file:=/home/ubuntu/nav2_pyif_ws/src/nav2_pyif/sicnav_python_example/params.yaml  # (Still bugged)
```
