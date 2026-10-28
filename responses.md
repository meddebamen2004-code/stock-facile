#Q1.3
*/'disponible' est stocké comme un entier (0 ou 1) et 'date_ajout' comme du texte.
*/'AUTOINCREMENT' génère un identifiant automatiquement. 'UNIQUE' empêche les noms en double. 'CHECk(prix >= 0)' interdit les prix négatifs.
*/'ON DELETE RESTRICT' empêche de supprimer une catégorie si elle est encore utilisée par des produits.

#Q1.8
Il faut fermer la base pour éviter les conflits d'accès et les problèmes d'écriture lorsque deux programmes utilisent le même fichier en même temps.

#2.3
'id' est de type 'int?' car il est nul avant l'ajout de la catégorie dans la base de données. 
'toMap()' ajoute l'id seulement s'il n'est pas null

#question de reflection partie 
'factory' permet de créer un objet à partir des données de la base de données. et 'toDouble()' convertit un nombre en 'double'