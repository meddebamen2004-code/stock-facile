import 'package:flutter/material.dart';
import '../../database/database_helper.dart';

class TestsScreen extends StatelessWidget {
  const TestsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Banc d’essai'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          ElevatedButton(
            onPressed: () async {
              final db = await DatabaseHelper().database;
              final resultat = await db.rawQuery(
                'SELECT COUNT(*) AS nb FROM categories',
              );
              debugPrint(
                'Nombre de catégories : ${resultat.first['nb']}',
              );
            },
            child: const Text('Ouvrir la base'),
          ),
          ElevatedButton(
            onPressed: () async {
              try {
                final db = await DatabaseHelper().database;

                final id = await db.insert('categories', {
                  'nom': 'Électroménager',
                  'description': 'Petits appareils',
                });

                debugPrint('ID de la catégorie ajoutée : $id');
              } catch (e) {
                debugPrint('Erreur : $e');

                if (!context.mounted) return;

                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Cette catégorie existe déjà'),
                  ),
                );
              }
            },
            child: const Text('Test : ajouter une catégorie'),
          ),

        ],
      ),
    );
  }
}