// This variable is called
// move_speed and stores
// the movement speed of the
// player. The speed is in
// pixels-per-second.
move_speed = 4;

// Initialize coins value at 0
coins = 0;

startX = x;

startY = y;

// Centrer la caméra sur le joueur
camera_set_view_pos(view_camera[0], obj_player.x - camera_get_view_width(view_camera[0]) / 2, obj_player.y - camera_get_view_height(view_camera[0]) / 2);

// Vérifier si le joueur est sur une zone interdite (eau ou pic)
if (place_meeting(x, y, obj_editor_water) || place_meeting(x, y, obj_spike)) {
    // Si le joueur est sur une zone interdite, redémarrer le jeu
    show_debug_message("Le joueur a spawn sur une zone interdite. Redémarrage du jeu.");
    room_restart();
}
