import 'package:flutter/material.dart';

import 'home_page/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
      ),
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 113,
          elevation: 0,
          backgroundColor: Colors.white,
          title: const Headers(),
        ),
        body: const BodyWidget(),
        bottomNavigationBar: const BottomWidget(),
      ),
    );
  }
}
