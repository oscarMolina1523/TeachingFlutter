import 'package:flutter/material.dart';
// debugShowCheckedModeBanner: false,

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp( //este siempre debe ir
      debugShowCheckedModeBanner: false,
      theme:  ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
        ),
      ) , 
      home: Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://upload.wikimedia.org/wikipedia/commons/e/ef/Samuel_Morse.jpg'),
            ),
          ),          
          title: Center(child: const Text("Libreria estudiante", style: TextStyle(color: Colors.white),)),
          backgroundColor: Colors.blue,
          actions: [
            IconButton(
              onPressed:(){
              },
              icon:const Icon(Icons.airplanemode_off)
          ),
          ],
        ),
        body: Center(
          child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[100],
              child: const Text("Administracion de catalogos"),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[200],
              child: const Text('Productos'),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[300],
              child: const Text('Inventario'),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[400],
              child: const Text('Perfil'),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[500],
              child: const Text('Usuarios'),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[600],
              child: const Text('Ventas'),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[600],
              child: const Text('Ventas'),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[600],
              child: const Text('Ventas'),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[600],
              child: const Text('Ventas'),
            ),
          ],
        )
        ),
      )
    );
  }
}
