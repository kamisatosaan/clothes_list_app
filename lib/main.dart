import 'package:flutter/material.dart';
import 'package:home_work/clothes_app/screen.dart';
import 'package:home_work/gridview_app/grid_screen.dart';
import 'package:home_work/gridview_app/profile_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const GridScreen(),
    );
  }
}
