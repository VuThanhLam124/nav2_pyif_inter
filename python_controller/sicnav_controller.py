import numpy as np
from geometry_msgs.msg import TwistStamped

from crowd_nav.policy.policy_factory import policy_factory

class SICNavController:
    def __init__(self):
        self.policy = policy_factory['orca']()
        self.policy.train_mode = False

    def compute_velocity_commands(self, occupancy_grid, pose, twist):
        """
        Hàm chính được gọi bởi nav2_pyif để tính toán cmd_vel.
        occupancy_grid, pose, twist là dữ liệu từ ROS (map, vị trí robot, v.v.)
        """
        cmd_vel = TwistStamped()

        state = self.get_robot_state(pose, occupancy_grid)

        action = self.policy.predict(state)

        cmd_vel.twist.linear.x = action.vx
        cmd_vel.twist.linear.y = action.vy
        cmd_vel.twist.angular.z = action.omega

        return cmd_vel

    def get_robot_state(self, pose, occupancy_grid):
        """
        Chuyển đổi pose & map => state mà SICNav hiểu.
        Ở đây ví dụ ta chỉ lấy x, y, orientation.z làm góc yaw (đơn giản hóa).
        """
        x = pose.position.x
        y = pose.position.y

        yaw = pose.orientation.z

        return np.array([x, y, yaw])

    def set_plan(self, global_plan):
        """ Hàm được Nav2 gọi khi có global_plan mới. Bỏ trống nếu SICNav tự xử lý. """
        pass

    def set_speed_limit(self, speed_limit, is_percentage):
        """ Hàm được Nav2 gọi khi cần giới hạn tốc độ. Tùy policy mà bạn xử lý hoặc bỏ trống. """
        pass

