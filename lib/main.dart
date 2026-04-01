import 'package:flutter/material.dart';
import 'screens/mapa_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),// tema adaptavel ao sistema
      darkTheme: ThemeData.dark(), // tema adaptavel ao sistema
      themeMode: ThemeMode.system,  // tema adaptavel ao sistema
      debugShowCheckedModeBanner: false,
      home: MapaPage()
    );
  }
}