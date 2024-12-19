import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text('머리부분'),),
      body: Container(
        child: Column(
          children: [
            ElevatedButton(onPressed: (){
              print('HI ');
              Navigator.pushNamed(context,'/def');
            }, child: Text('기본 Widget')),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              print('HI ');
              Navigator.pushNamed(context,'/rowColumn');
            }, child: Text('Row 컬럼')),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              print('HI ');
              Navigator.pushNamed(context,'/boxCon');
            }, child: Text('box 꾸미는 용도')),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              print('HI ');
              Navigator.pushNamed(context,'/con2');
            }, child: Text('con2')),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              print('HI ');
              Navigator.pushNamed(context,'/counter');
            }, child: Text('counter')),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              print('HI ');
              Navigator.pushNamed(context,'/parent');
            }, child: Text('parent')),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              print('HI ');
              Navigator.pushNamed(context,'/formW');
            }, child: Text('formW')),
          ],
        ),
      ),
      bottomNavigationBar: Text('Bottom 부분'),
    );
  }
}
