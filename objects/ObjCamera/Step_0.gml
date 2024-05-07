camera_set_view_size(view_camera[0], global.cameraWidth, global.cameraHeight);

var _targetX = Player.x - (global.cameraWidth * 0.1);
var _targetY = Player.y - (global.cameraHeight * 0.7);

camera_set_view_pos(view_camera[0], _targetX, _targetY);