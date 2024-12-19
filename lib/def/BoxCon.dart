import 'package:flutter/material.dart';

class BoxCon extends StatelessWidget {
  const BoxCon({super.key});

  //Text(Span), Image(그림, img), Icon(특수 문자), Container(div)
  @override
  Widget build(BuildContext context) {
    


    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'sunflower',
        textTheme: TextTheme(
          displayLarge: TextStyle(
            color: Colors.white10,
            fontSize: 25,
            fontWeight: FontWeight.bold,
            fontFamily: 'perisienne'
          )
        ),
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('Box 꾸미기', style: TextStyle(
            color: Colors.cyanAccent,
            fontSize: 25,
            fontWeight: FontWeight.bold,
            fontFamily: 'assets/font/Parisienne-Regular.ttf'
        ),),
          backgroundColor: Colors.black12,
        ),
        body: _Body(),
      ),
    );



  }
}

class _Body extends StatelessWidget {
  const _Body({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      margin: EdgeInsets.only(left: 15),
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          color: Colors.amberAccent,
          border: Border.all(
              width: 16,
              color: Colors.blue
          ),
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(colors: [Colors.red, Colors.blue],begin: Alignment.topLeft, end: Alignment.bottomRight)
      ),
      child: Column(
        children: [
          Text('Hello', style: textTheme.displayLarge,),
          Icon(Icons.star)
        ],
      ),
    );
  }
}

