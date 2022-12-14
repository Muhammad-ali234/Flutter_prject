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
        body: TabBarView(
          children: const [
            Text('Text'),
            Text('Text1'),
            Text('Text2'),
            Text('Text3'),
          ],
        ));
  }
}
