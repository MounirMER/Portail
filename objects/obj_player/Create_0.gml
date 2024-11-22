/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 54FD0540
/// @DnDArgument : "code" "/// @DnDAction : YoYo Games.Common.Execute_Code$(13_10)/// @DnDVersion : 1$(13_10)/// @DnDHash : 6BD3EDE8$(13_10)/// @DnDArgument : "code" "// This variable is called$(13_10)// move_speed and stores$(13_10)// the movement speed of the$(13_10)// player. The speed is in$(13_10)// pixels-per-second.$(13_10)move_speed = 4;$(13_10)$(13_10)// Initialize coins value at 0$(13_10)coins = 0;$(13_10)$(13_10)startX = x;$(13_10)$(13_10)startY = y;$(13_10)$(13_10)// Vérifier si le joueur est sur une zone interdite (eau ou pic)$(13_10)if (place_meeting(x, y, obj_editor_water) || place_meeting(x, y, obj_spike)) {$(13_10)    // Si le joueur est sur une zone interdite, redémarrer le jeu$(13_10)    show_debug_message("Le joueur a spawn sur une zone interdite. Redémarrage du jeu.");$(13_10)    room_restart();$(13_10)}$(13_10)"$(13_10)// This variable is called$(13_10)// move_speed and stores$(13_10)// the movement speed of the$(13_10)// player. The speed is in$(13_10)// pixels-per-second.$(13_10)move_speed = 4;$(13_10)$(13_10)// Initialize coins value at 0$(13_10)coins = 0;$(13_10)$(13_10)startX = x;$(13_10)$(13_10)startY = y;$(13_10)$(13_10)// Vérifier si le joueur est sur une zone interdite (eau ou pic)$(13_10)if (place_meeting(x, y, obj_editor_water) || place_meeting(x, y, obj_spike)) {$(13_10)    // Si le joueur est sur une zone interdite, redémarrer le jeu$(13_10)    show_debug_message("Le joueur a spawn sur une zone interdite. Redémarrage du jeu.");$(13_10)    room_restart();$(13_10)}"
/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6BD3EDE8
/// @DnDArgument : "code" "// This variable is called$(13_10)// move_speed and stores$(13_10)// the movement speed of the$(13_10)// player. The speed is in$(13_10)// pixels-per-second.$(13_10)move_speed = 4;$(13_10)$(13_10)// Initialize coins value at 0$(13_10)coins = 0;$(13_10)$(13_10)startX = x;$(13_10)$(13_10)startY = y;$(13_10)$(13_10)// Vérifier si le joueur est sur une zone interdite (eau ou pic)$(13_10)if (place_meeting(x, y, obj_editor_water) || place_meeting(x, y, obj_spike)) {$(13_10)    // Si le joueur est sur une zone interdite, redémarrer le jeu$(13_10)    show_debug_message("Le joueur a spawn sur une zone interdite. Redémarrage du jeu.");$(13_10)    room_restart();$(13_10)}$(13_10)"
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