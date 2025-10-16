import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF4A7FB2),
        title: const Text('Tela Inicial'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.home_work_outlined,
              size: 100,
              color: Color(0xFF4A7FB2),
            ),
            SizedBox(height: 20),
            Text(
              'Bem-vindo(a) à Tela Inicial!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF769ec6),
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Tela Inicial'),
              onTap: null,
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Configurações'),
            ),
            ListTile(
              leading: Icon(Icons.contact_mail),
              title: Text('Entre em Contato'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFFA3BED9),
        selectedItemColor: Colors.blueAccent,
        items:[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Página 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Página 2',
          ),
        ],
      ),
    );
  }
}
