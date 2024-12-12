import 'package:flutter/material.dart';

class Def extends StatelessWidget {
  const Def({super.key});

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text('머리부분'),),
      body: Container(
        child: Column(
          children: [
            Text('Hello World'),
            Text('Flutter'),
            Icon(Icons.star),
            Image.asset('aaa.png')//경로
          ],
        ),
      ),
      bottomNavigationBar: Text('Bottom 부분'),
    );
  }
}
