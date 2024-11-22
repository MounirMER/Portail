// Calculer la direction du projectile
var projectile_direction = point_direction(obj_player.x, obj_player.y, device_mouse_x(0), device_mouse_y(0));

// Calculer la position initiale du point d'impact
var collision_x = x;
var collision_y = y;

// Initialiser la position sécurisée
var safe_x = collision_x - lengthdir_x(16, projectile_direction);
var safe_y = collision_y - lengthdir_y(16, projectile_direction);

// Définir un seuil de recul
var step_back = 8; // Pixels à reculer par itération
var max_attempts = 10; // Limite des tentatives pour éviter une boucle infinie
var attempts = 0;

// Boucle pour reculer jusqu'à trouver une position sûre
while ((place_meeting(safe_x, safe_y, obj_editor_wall) || 
        place_meeting(safe_x, safe_y, obj_editor_water) || 
        place_meeting(safe_x, safe_y, obj_spike)) 
        && attempts < max_attempts) 
{
    // Calculer le recul dans la direction opposée
    safe_x = safe_x - lengthdir_x(step_back, projectile_direction);
    safe_y = safe_y - lengthdir_y(step_back, projectile_direction);
    attempts += 1;
}

// Vérifier si une position sûre a été trouvée
if (attempts >= max_attempts) {
    // Si aucune position sûre n'a été trouvée, garder la position actuelle
    safe_x = obj_player.x;
    safe_y = obj_player.y;
    show_debug_message("Impossible de trouver une position sûre. Téléportation annulée.");
}

// Supprimer l'ancienne instance du joueur
with (obj_player) instance_destroy();

// Créer une nouvelle instance du joueur à la position validée
instance_create_layer(safe_x, safe_y, "Instances", obj_player);

// Supprimer l'objet actuel si nécessaire
instance_destroy();
