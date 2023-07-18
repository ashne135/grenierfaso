import 'package:flutter/material.dart';

import '../tontine/bouton_cree_tontine.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Accueil'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('John Doe'),
              accountEmail: Text('john.doe@example.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/profile_image.jpg'),
              ),
            ),
            ListTile(
              leading: Icon(Icons.table_chart),
              title: Text('Tableau de compteurs'),
              subtitle: Text('5 tontines créées | 3 tontines membres'),
              onTap: () {
                // Naviguer vers la page du tableau de compteurs
              },
            ),
            ListTile(
              leading: Icon(Icons.person_add),
              title: Text('Rejoindre une tontine'),
              onTap: () {
                // Naviguer vers la page de rejoindre une tontine
              },
            ),
            ListTile(
              leading: Icon(Icons.group_add),
              title: Text('Demandes d\'adhésion'),
              onTap: () {
                // Naviguer vers la page des demandes d'adhésion
              },
            ),
            ListTile(
              leading: Icon(Icons.chat),
              title: Text('Discussions'),
              onTap: () {
                // Naviguer vers la page des discussions
              },
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notifications'),
              onTap: () {
                // Naviguer vers la page des notifications
              },
            ),
            ListTile(
              leading: Icon(Icons.lock),
              title: Text('Mot de passe'),
              onTap: () {
                // Naviguer vers la page du mot de passe
              },
            ),
            ListTile(
              leading: Icon(Icons.edit),
              title: Text('Editer votre profil'),
              onTap: () {
                // Naviguer vers la page de l'édition du profil
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Déconnexion'),
              onTap: () {
                // Gérer la déconnexion
              },
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text('Tutos'),
              onTap: () {
                // Naviguer vers la page des tutoriels
              },
            ),
            ListTile(
              leading: Icon(Icons.help_outline),
              title: Text('FAQ'),
              onTap: () {
                // Naviguer vers la page des FAQ
              },
            ),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hello, John',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: AssetImage('assets/profile_image.jpg'),
                ),
              ],
            ),
            SizedBox(height: 8.0),
            Text(
              'Bienvenue dans l\'application Grenier du Faso',
              style: TextStyle(
                fontSize: 16.0,
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'NOS SERVICES',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
              ),
            ),
            SizedBox(height: 16.0),
            Row(
  children: [
    Container(
      
      // Ajuster cette ligne pour augmenter la largeur des cartes
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        shape: BoxShape.rectangle,
        border: Border.all(width: 4, color: Colors.grey),
        color: Color.fromARGB(255, 87, 127, 212),
      
      ),
       width: 150,
      height: 130,
      alignment: Alignment.topLeft,
        padding: EdgeInsets.all(0),
      margin: EdgeInsets.all(1),
    
        
        // Ajuster cette ligne pour augmenter la hauteur des cartes
        child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PageCreationTontine(tontines: []),
            ),
          );
        },
         
          child: ListTile(
            title: Text(
              'Tontine',
             style: TextStyle(fontSize: 17,color: Colors.white),
             
            ),
            trailing: Icon(Icons.arrow_forward, size: 20, color: Colors.white,), 
          ),
       
        ),
      
      
    ),
    SizedBox(width: 16.0),
    Container(
      
      // Ajuster cette ligne pour augmenter la largeur des cartes
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        shape: BoxShape.rectangle,
        border: Border.all(width: 4, color: Color.fromARGB(255, 138, 141, 154)),
        color: Color.fromARGB(255, 87, 127, 212),
        
      
      ),
      width: 150,
      height: 130,
      alignment: Alignment.topLeft,
        padding: EdgeInsets.all(0),
      margin: EdgeInsets.all(0),
        
        // Ajuster cette ligne pour augmenter la hauteur des cartes
        child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PageCreationTontine(tontines: []),
            ),
          );
        },
         
          child: ListTile(
            title: Text(
              'Paiement',
style: TextStyle(fontSize: 17,color: Colors.white),
             
            ),
            trailing: Icon(Icons.arrow_forward, size: 20, color: Colors.white,), 
          ),
       
        ),
      
      
    ),
  ],
),

            SizedBox(height: 16.0),
            Text(
              'RECEMMENT CREES',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 16.0),
            // Card(
            //   shape: RoundedRectangleBorder(
            //     borderRadius: BorderRadius.circular(10.0),
            //   ),
            //   child: Padding(
            //     padding: EdgeInsets.all(16.0),
            //     child: Column(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         Text(
            //           'Nom de la tontine',
            //           style: TextStyle(
            //             fontWeight: FontWeight.bold,
            //             fontSize: 16.0,
            //           ),
            //         ),
            //         SizedBox(height: 8.0),
            //         Text('Date de création: 17 juin 2023'),
            //         SizedBox(height: 8.0),
            //         Text('Profil de la tontine: Profil de la tontine'),
            //         SizedBox(height: 8.0),
            //         ElevatedButton(
            //           onPressed: () {
            //             // Gérer l'action lorsque le bouton est cliqué
            //           },
            //           child: Text('NON DEMARRE'),
            //         ),
            //         SizedBox(height: 8.0),
            //         Text('Durée de la tontine: 6 mois'),
            //         SizedBox(height: 8.0),
            //         Text('Début de la tontine: 1 juillet 2023'),
            //         SizedBox(height: 8.0),
            //         Text('Fin de la tontine: 31 décembre 2023'),
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Accueil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
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
      home: HomeScreen(),
    );
  }
}
