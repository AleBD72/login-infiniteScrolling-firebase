import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login_firebase_2/screens/signin_screen.dart';

import '../utils/color_utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Lista inicial de elementos
  List<String> items = List.generate(20, (index) => 'IS Elemento ${index + 1}');
  ScrollController _scrollController = ScrollController();

  // Función para simular la carga de más elementos
  void _loadMoreItems() {
    // Simula una carga asincrónica de datos
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        // Agrega 10 elementos más a la lista
        items.addAll(List.generate(10, (index) => 'Elemento ${items.length + index + 1}'));
      });
    });
  }

  @override
  void initState() {
    super.initState();
    // Agrega un listener al controlador del scroll para detectar el final de la lista
    _scrollController.addListener(() {
      if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
        _loadMoreItems();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: hexStringToColor("A91079"),
        title: Text("Home Screen"),
        actions: [
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {
              FirebaseAuth.instance.signOut().then((value) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => SingInScreen()),
                );
              });
            },
          ),
        ],
      ),
      body: ListView.builder(
        controller: _scrollController, // Asigna el controlador del scroll al ListView
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]),
          );
        },
      ),
    );
  }
}
