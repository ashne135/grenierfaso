import 'package:flutter/material.dart';

class CreeTontineScreen extends StatefulWidget {
  @override
  _CreeTontineScreenState createState() => _CreeTontineScreenState();
}

class _CreeTontineScreenState extends State<CreeTontineScreen> {
  String? selectedType;
  String? selectedPeriodicity;

  List<String> types = ['Groupe', 'Individuel'];
  List<String> periodicities = ['Journalière', 'Mensuelle'];

  List<Tontine> tontines = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Créer une tontine'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Montant de la prise de la tontine',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text('Montant: \$1000'),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Type de tontine',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 8.0),
            DropdownButton<String>(
              value: selectedType,
              onChanged: (value) {
                setState(() {
                  selectedType = value;
                });
              },
              items: types.map((String type) {
                return DropdownMenuItem<String>(
                  value: type,
                  child: Text(type),
                );
              }).toList(),
            ),
            SizedBox(height: 16.0),
            Text(
              'Nom de la tontine',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 8.0),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Entrez le nom de la tontine',
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Périodicité de la tontine',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 8.0),
            DropdownButton<String>(
              value: selectedPeriodicity,
              onChanged: (value) {
                setState(() {
                  selectedPeriodicity = value;
                });
              },
              items: periodicities.map((String periodicity) {
                return DropdownMenuItem<String>(
                  value: periodicity,
                  child: Text(periodicity),
                );
              }).toList(),
            ),
            SizedBox(height: 16.0),
            Text(
              'Nombre de membres',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 8.0),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Entrez le nombre de membres',
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Montant total et montant à cotiser',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 8.0),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'Montant total',
                    ),
                  ),
                ),
                SizedBox(width: 16.0),
                Expanded(
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'Montant à cotiser',
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Text(
              'Dates de la tontine',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 8.0),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Date de début',
                    ),
                  ),
                ),
                SizedBox(width: 16.0),
                Expanded(
                  child: TextFormField(
                    enabled: false,
                    decoration: InputDecoration(
                      hintText: 'Date de fin',
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Text(
              'Description de la tontine',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 8.0),
            TextFormField(
              maxLines: 3,
              decoration: InputDecoration(
                hintText: 'Entrez la description de la tontine',
              ),
            ),
            SizedBox(height: 16.0),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        // Récupérer les valeurs saisies dans le formulaire
                        String nom = 'Nom de la tontine'; // Récupérer la valeur du champ nom
                        String type = selectedType ?? '';
                        String periodicite = selectedPeriodicity ?? '';

                        // Créer une instance de la classe Tontine avec les valeurs récupérées
                        Tontine nouvelleTontine = Tontine(nom: nom, type: type, periodicite: periodicite);

                        // Ajouter la nouvelle tontine à la liste
                        tontines.add(nouvelleTontine);
                      });

                      // Naviguer vers la page "PageCreationTontine"
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PageCreationTontine(tontines: tontines),
                        ),
                      );
                    },
                    child: Text('Enregistrer'),
                  ),
                ),
                SizedBox(width: 16.0),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // Gérer l'action lorsque le bouton "Annuler" est cliqué
                    },
                    child: Text('Annuler'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Tontine {
  final String nom;
  final String type;
  final String periodicite;

  Tontine({required this.nom, required this.type, required this.periodicite});
}

class PageCreationTontine extends StatelessWidget {
  final List<Tontine> tontines;

  PageCreationTontine({required this.tontines});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tontines récemment créées'),
      ),
      body: ListView.builder(
        itemCount: tontines.length,
        itemBuilder: (context, index) {
          Tontine tontine = tontines[index];

          return Card(
            child: ListTile(
              title: Text(tontine.nom),
              subtitle: Text('Type: ${tontine.type}, Périodicité: ${tontine.periodicite}'),
              trailing: ElevatedButton(
                onPressed: () {
                  // Gérer l'action lorsque le bouton "Démarrer" est cliqué
                },
                child: Text('Démarrer'),
              ),
            ),
          );
        },
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tontine App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CreeTontineScreen(),
    );
  }
}
