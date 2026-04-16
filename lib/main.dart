import 'package:flutter/material.dart';
import 'package:task_app/views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF4F7F5),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF1F8A70),
          primary: const Color(0xFF1F8A70),
          secondary: const Color(0xFF8FD9C7),
          surface: Colors.white,
        ),
        fontFamily: 'sans-serif',
        appBarTheme: const AppBarTheme(
          centerTitle: false,
          elevation: 0,
          backgroundColor: Colors.transparent,
          foregroundColor: Color(0xFF163832),
          titleTextStyle: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w800,
            color: Color(0xFF163832),
          ),
        ),
      ),
      home: const HomeView(),
    );
  }
}
