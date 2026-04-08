import 'package:flutter/material.dart';
import 'package:portfolio/Provider/tab_dataprovider.dart';
import 'package:portfolio/views/homepage.dart';
import 'package:portfolio/widgets/Cursor/animated_circle_cursor.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context)=> TabDataProvider(),)
    ],
    child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: AnimatedCircleCursor(child: Homepage()),
    );
  }
}

