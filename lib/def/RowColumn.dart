import 'package:flutter/material.dart';

class RowColumn extends StatelessWidget {
  const RowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Row컬럼')),
          body: Column(
            children: [
              Row(
                children: [
                  Icon(Icons.star),
                  Icon(Icons.star),
                  Icon(Icons.star),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.star),
                  Icon(Icons.star),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.star),
                ],
              ),
            ],
          ),
        bottomNavigationBar: Row(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                height: 150,
                color: Colors.grey,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.home, size: 40, color: Colors.white),
                    SizedBox(width: 500),
                    Icon(Icons.search, size: 40, color: Colors.white),
                    SizedBox(width: 500),
                    Icon(Icons.notifications, size: 40, color: Colors.white),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
