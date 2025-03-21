// Positions initiales
var collision_x = x;
var collision_y = y;

// Calculer la direction opposée à celle du projectile
var opposite_direction = direction + 180;
opposite_direction = opposite_direction mod 360; // S'assurer que la direction est entre 0 et 359

// Initialiser la position sécurisée
var safe_x = collision_x;
var safe_y = collision_y;

// Paramètres pour la recherche de position sûre
var step_size = 1; // Taille du pas pour chaque itération
var max_distance = 64; // Distance maximale pour reculer (ajustez selon vos besoins)
var distance_checked = 0;
var found_safe_position = false;

// Dimensions de la hitbox élargie
var hitbox_width = sprite_width + 4; // Par exemple, ajouter 32 pixels de marge
var hitbox_height = sprite_height + 4; // Ajustez selon vos besoins

// Supprimer le projectile actuel
instance_destroy();

// Boucle pour reculer jusqu'à trouver une position sûre
while (distance_checked < max_distance)
{
    // Définir les coordonnées du rectangle de collision élargi
    var left = safe_x - hitbox_width / 2;
    var right = safe_x + hitbox_width / 2;
    var top = safe_y - hitbox_height / 2;
    var bottom = safe_y + hitbox_height / 2;

    // Vérifier s'il y a une collision dans le rectangle élargi
    if (!collision_rectangle(left, top, right, bottom, obj_editor_wall, false, false) &&
        !collision_rectangle(left, top, right, bottom, obj_editor_water, false, false) &&
        !collision_rectangle(left, top, right, bottom, obj_spike, false, false))
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
}
else
{
    // Aucune position sûre trouvée
    show_debug_message("Impossible de trouver une position sûre. Téléportation annulée.");
}
