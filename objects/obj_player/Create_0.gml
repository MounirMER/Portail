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

// Vérifier si le joueur est sur une zone interdite (eau ou pic)
if (place_meeting(x, y, obj_editor_water) || place_meeting(x, y, obj_spike)) {
    // Si le joueur est sur une zone interdite, redémarrer le jeu
    show_debug_message("Le joueur a spawn sur une zone interdite. Redémarrage du jeu.");
    room_restart();
}
