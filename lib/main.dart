import 'package:flutter/material.dart';
import 'package:latihan_bloc/routes/routes.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final router = MyRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: router.onGenerateRoute,
    );
  }
}
