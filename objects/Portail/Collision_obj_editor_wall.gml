var collision_x = x;
var collision_y = y;

// Calculer la direction opposée à celle du projectile
var opposite_direction = direction + 180;

// Initialiser la position sécurisée
var safe_x = collision_x;
var safe_y = collision_y;

// Paramètres pour la recherche de position sûre
var step_size = 1; // Taille du pas pour chaque itération
var max_distance = 64; // Distance maximale pour reculer (ajustez selon vos besoins)
var distance_checked = 0;
var found_safe_position = false;

// Boucle pour reculer jusqu'à trouver une position sûre
while (distance_checked < max_distance)
{
    // Vérifier s'il y a une collision à la position actuelle
    if (!place_meeting(safe_x, safe_y, obj_editor_wall) &&
        !place_meeting(safe_x, safe_y, obj_editor_water) &&
        !place_meeting(safe_x, safe_y, obj_spike))
    {
        // Position sûre trouvée
        found_safe_position = true;
        break;
    }

    // Reculer le long de la direction opposée au projectile
    safe_x += lengthdir_x(step_size, opposite_direction);
    safe_y += lengthdir_y(step_size, opposite_direction);
    distance_checked += step_size;
}

if (found_safe_position)
{
    // Supprimer l'instance actuelle du joueur
    with (obj_player) instance_destroy();

    // Créer une nouvelle instance du joueur à la position sûre
    instance_create_layer(safe_x, safe_y, "Instances", obj_player);

    // Supprimer le projectile actuel
    instance_destroy();
}
else
{
    // Aucune position sûre trouvée
    show_debug_message("Impossible de trouver une position sûre. Téléportation annulée.");
}
