import 'package:flutter/material.dart';

class FormW extends StatefulWidget {
  const FormW({super.key});

  @override
  State<FormW> createState() => _FormWState();
}

class _FormWState extends State<FormW> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _TextArea()
              ],
            )
          ],
        ),
      )
    );
  }
}

class _TextArea extends StatefulWidget {
  const _TextArea({super.key});

  @override
  State<_TextArea> createState() => _TextAreaState();
}

class _TextAreaState extends State<_TextArea> {

  String? _userName = null;
  String? _userPassword = null;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 200,
          height: 50,
          child: TextFormField(
            decoration: InputDecoration(label: Text('이름 입력하기')),
            keyboardType: TextInputType.text,
            onChanged: (value){
              setState(() {
                _userName = value ?? '';
              });
              print('${value}');
            },
          ),
        ),
        Container(
          width: 200,
          height: 50,
          child: TextFormField(
            decoration: InputDecoration(label: Text('비밀번호 입력하기')),
            obscureText: true,
            keyboardType: TextInputType.text,
            onChanged: (value){
              setState(() {
                _userPassword = value ?? '';
              });
              print('${value}');
            },
          ),
        ),
        ElevatedButton(onPressed: (){
          print('========================');
          print('userName: ${_userName}');
          print('userPassword: ${_userPassword}');
        }, child: Text('Check!'))
      ],
    );
  }
}
