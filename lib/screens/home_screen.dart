import 'package:flutter/material.dart';
import '../screens/pantry_screen.dart';
import '../widgets/home_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hi [Name]!'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.person)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: Container(
                color: Color(0xFFFFFFFF), // Fondo gris claro o cualquier otro color
                child: ListView(
                  padding: const EdgeInsets.all(16),
                  children: [
                    HomeCard(
                      text: 'Ver despensa',
                      onPressed: () {
                        Navigator.pushNamed(context, '/pantry');
                      },
                    ),
                    HomeCard(
                      text: '¿Qué puedo cocinar?',
                      onPressed: () {
                        // acción que quieras
                      },
                    ),
                    HomeCard(
                      text: 'Lista de compras',
                      onPressed: () {
                        // acción que quieras
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (index) {},
        backgroundColor: Colors.white,
        selectedItemColor: Color(0xFFC53415),
        unselectedItemColor: Color(0xFFD3634B),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Saved'),
          BottomNavigationBarItem(icon: Icon(Icons.filter_alt), label: 'Filter'),
        ],
      ),
    );
  }
}
