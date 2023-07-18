import 'package:flutter/material.dart';
import 'cree_tontine.dart';

class PageCreationTontine extends StatelessWidget {
  final List<Tontine> tontines;

  PageCreationTontine({required this.tontines});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Création de tontine'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CreeTontineScreen(),
                ),
              );
            },
            child: Text('Créer tontine'),
          ),
          SizedBox(height: 16.0),
          Expanded(
            child: ListView.builder(
              itemCount: tontines.length,
              itemBuilder: (context, index) {
                Tontine tontine = tontines[index];

                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: ListTile(
                    title: Text(tontine.nom),
                    subtitle: Text(tontine.type),
                    trailing: ElevatedButton(
                      onPressed: () {
                        // Action lorsque le bouton "Démarrer" est cliqué
                      },
                      child: Text('Démarrer'),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
class Tontine {
  final String nom;
  final String type;

  Tontine({required this.nom, required this.type});
}
