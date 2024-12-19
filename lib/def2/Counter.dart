import 'package:flutter/material.dart';


class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {

  int count = 0; // 좋아요 숫자


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('좋아요기능'),),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Icon(Icons.favorite),
                    Text('좋아요'),
                    SizedBox(width: 10,),
                    Text('${count}')
                  ],
                ),
                Row(
                  children: [

                    Container(
                      // 더하기
                      child: FloatingActionButton(onPressed: () {
                        print('add');
                        setState(() {
                          count++;
                        });

                      }, child: Icon(Icons.add),),
                    ),


                    Container(
                      // 빼기
                      child: FloatingActionButton(onPressed: () {
                        setState(() {
                          count--;
                        });
                      }, child: Icon(Icons.remove),),
                    ),


                    Container(
                      // 리셋
                      child: FloatingActionButton(onPressed: () {
                        setState(() {
                          count = 0;
                        });
                      }, child: Icon(Icons.reset_tv),),
                    ),


                  ],

                ),

                _Img()
              ],
            )

          ],
        ),
      ),
    );
  }
}






//아랫 동네
class _Img extends StatelessWidget {
  const _Img({super.key});

  @override
  Widget build(BuildContext context) {
    return   Center(
      child: Image.asset('aaa.png',
        height: MediaQuery.of(context).size.height/2,),
    );
  }
}
