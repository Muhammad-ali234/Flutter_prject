import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/myDrawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Catalog App',
          textScaleFactor: 1.3,
        ),
      ),
      drawer: MyDrawer(),
      body: Center(
        child: Text('Welcome to 30 days of flutter'),
      ),
    );
  }
}
