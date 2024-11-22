// Calculer la direction du projectile
var projectile_direction = point_direction(obj_player.x, obj_player.y, device_mouse_x(0), device_mouse_y(0));

// Calculer la position du point d'impact
var collision_x = x;
var collision_y = y;

// Reculer davantage dans l'axe du tir pour une position sûre
var safe_x = collision_x - lengthdir_x(32, projectile_direction); // Recul augmenté à 16 pixels
var safe_y = collision_y - lengthdir_y(32, projectile_direction);

// Supprimer l'ancienne instance du joueur
with (obj_player) instance_destroy();

// Créer une nouvelle instance du joueur à la position ajustée
instance_create_layer(safe_x, safe_y, "Instances", obj_player);

// Supprimer l'objet actuel si nécessaire
instance_destroy();
