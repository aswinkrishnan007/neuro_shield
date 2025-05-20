import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:neuro_shield/view/home_screen.dart';

void main() {
  runApp(const ProviderScope(child: NeuroShield()));
}

class NeuroShield extends StatelessWidget {
  const NeuroShield({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AI Based Network Intrusion Detection System',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

