import 'package:flutter/material.dart';

class firstButtonPage extends StatelessWidget {
  const firstButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Komunikacja w sieci komputerowej'),
        backgroundColor: const Color.fromARGB(255, 162, 85, 250), 
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0), // Dodaje padding do całej treści
        child: Center(
          child: Text(
            ''' 
            Komunikacja w sieci komputerowej opiera się na modelach warstwowych, takich jak TCP/IP i ISO/OSI. 
            Modele te dzielą proces przesyłania danych na etapy, z których każdy realizuje określone zadania i ułatwia zrozumienie oraz zarządzanie komunikacją. Ich stosowanie zapewnia: jasne zasady komunikacji (protokoły), kompatybilność urządzeń i oprogramowania różnych producentów, łatwiejsze zrozumienie działania sieci, możliwość skutecznego zarządzania przesyłem danych.

            Dane są przed wysłaniem odpowiednio przygotowywane, oznaczane i przesyłane przez wiele urządzeń pośredniczących do odbiorcy, który musi je prawidłowo zinterpretować.
            ''',
            style: TextStyle(fontSize: 16, height: 1.5), // Zwiększenie czcionki i interlinii
          ),
        ),
      ),
    );
  }
}
