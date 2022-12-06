import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/myDrawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App Bar'),
      ),
      drawer: MyDrawer(),
      body: Center(
        child: Text('Welcome to 30 days of flutter'),
      ),
    );
  }
}
