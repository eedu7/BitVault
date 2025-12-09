import 'package:bitvault/screen/backup_screen.dart';
import 'package:bitvault/screen/export_screen.dart';
import 'package:bitvault/screen/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const MainScreen(),
        '/export': (context) => const ExportScreen(),
        '/backup': (context) => const BackupScreen(),
      },
    );
  }
}
