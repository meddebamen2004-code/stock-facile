#Q1.3
*/'disponible' est stocké comme un entier (0 ou 1) et 'date_ajout' comme du texte.
*/'AUTOINCREMENT' génère un identifiant automatiquement. 'UNIQUE' empêche les noms en double. 'CHECk(prix >= 0)' interdit les prix négatifs.
*/'ON DELETE RESTRICT' empêche de supprimer une catégorie si elle est encore utilisée par des produits.

#Q1.8
Il faut fermer la base pour éviter les conflits d'accès et les problèmes d'écriture lorsque deux programmes utilisent le même fichier en même temps.