import 'package:flutter/material.dart';
import '../widgets/product_card.dart';
import '../widgets/action_button.dart';

class DespensaScreen extends StatefulWidget {
  const DespensaScreen({super.key});

  @override
  State<DespensaScreen> createState() => _DespensaScreenState();
}

class _DespensaScreenState extends State<DespensaScreen> {
  bool isExpanded = false;

  void toggleFab() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Despensa"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
        ],
      ),
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.all(16),
            children: const [
              ProductCard(name: "Manzana", quantity: 6),
              ProductCard(name: "Tomates", quantity: 4),
              ProductCard(name: "Carne de Res", quantity: 5),
            ],
          ),
          if (isExpanded)
            Positioned(
              bottom: 100,
              right: MediaQuery.of(context).size.width / 2 - 75,
              child: Column(
                children: [
                  ActionButton(
                    text: "Ingresar texto",
                    onPressed: () => print("Ingresar texto"),
                  ),
                  const SizedBox(height: 16),
                  ActionButton(
                    text: "Fotografiar producto",
                    onPressed: () => print("Fotografiar producto"),
                  ),
                ],
              ),
            ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: toggleFab,
        backgroundColor: const Color(0xFFC53415),
        child: Icon(isExpanded ? Icons.close : Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (index) {},
        selectedItemColor: const Color(0xFFBA361A),
        unselectedItemColor: const Color(0xFFD3634B),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Saved'),
          BottomNavigationBarItem(icon: Icon(Icons.filter_alt), label: 'Filter'),
        ],
      ),
    );
  }
}
