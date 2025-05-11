import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:starter_application/secondButtonPage.dart';

import 'firstButtonPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MyAppState>(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Namer App',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 0, 110, 255)),
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();

    return Scaffold(
      // Ustawienie koloru tła dla całego Scaffold
      backgroundColor: Colors.lightBlue[50], // Jasnoniebieskie tło
      body: Center( // Wyśrodkowanie zawartości
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start, // Wyśrodkowanie w pionie
          children: [
            // Zmiana koloru tekstu za pomocą TextStyle
            Text(
              'A dupa idea:',
              style: TextStyle(color: Colors.red), // Czerwony kolor tekstu
            ),
            // Zmiana koloru tekstu dla drugiego widżetu Text
            Text(
              appState.current.asLowerCase,
              style: TextStyle(color: Colors.green, fontSize: 24), // Zielony kolor tekstu i większy rozmiar czcionki
            ),
            // Przykład użycia Container do ustawienia tła dla konkretnego elementu
            Container(
              color: const Color.fromARGB(255, 196, 196, 196), // Jasnożółte tło dla Container
              padding: EdgeInsets.all(5.0), // Dodanie wewnętrznego odstępu
              margin: EdgeInsets.only(top: 20.0), // Dodanie górnego marginesu
              child: Text(
                'Tekst w kontenerze z tłem',
                style: TextStyle(color: Colors.purple), // Fioletowy kolor tekstu w kontenerze
                
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center, // Wyśrodkuj w poziomie
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const firstButtonPage()),
                    );
                  },
                  child: const Text('Modele warstwowe ISO/OSI i TCP/IP'),
                ),
                const SizedBox(width: 16), // odstęp między przyciskami
                 ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const secondButtonPage()),
                    );
                  },
                  child: const Text('II'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


