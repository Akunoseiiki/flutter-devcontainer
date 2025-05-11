import 'package:flutter/material.dart' show AppBar, BuildContext, Center, Scaffold, StatelessWidget, Text, TextStyle, Widget;

class secondButtonPage extends StatelessWidget {
  const secondButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Druga strona')),
      body: const Center(
        child: Text(
          'Kupa',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}