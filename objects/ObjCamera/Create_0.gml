global.cameraWidth = 320;
global.cameraHeight = 180;
global.windowScale = 2;

window_set_size(global.cameraWidth * global.windowScale, global.cameraHeight * global.windowScale);

surface_resize(application_surface, global.cameraWidth, global.cameraHeight);
display_set_gui_size(global.cameraWidth, global.cameraHeight);