import 'dart:math';

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
              _TextArea(),
              _SliderArea(),
              _RadioArea(),


            ],
          )
        ],
      ),
    ));
  }
}
class _CheckArea extends StatefulWidget {
  const _CheckArea({super.key});

  @override
  State<_CheckArea> createState() => _CheckAreaState();
}

class _CheckAreaState extends State<_CheckArea> {
  List<String> _hobbys = ['코딩', '독서', '운동', '수영', '제작'];
  Map<String, bool> _selectdHobbys = {}; //Map 기본표시

  @override
  void initState(){
    print('init');
    super.initState();

    for(var h in _hobbys){
      _selectdHobbys[h] = false;
    }
  }
  @override
  Widget build(BuildContext context) {

    return    Row(
      children: [
        ..._hobbys.map(
                (hobby){

              bool _isSelected = _selectdHobbys[hobby] ?? false;
              return Row(
                children: [
                  Checkbox(value: _isSelected ,  activeColor: Colors.lightGreenAccent,onChanged: (value){
                    setState(() {
                      _selectdHobbys[hobby] = value ?? false;
                    });
                  }),
                  Text(hobby,
                    style: TextStyle(
                        fontSize: 20,
                        color: _isSelected ? Colors.red : Colors.black26,
                        fontWeight: _isSelected ? FontWeight.bold : FontWeight.normal),)
                ],
              );

            }
        )
      ],
    );
  }
}


class _RadioArea extends StatefulWidget {
  const _RadioArea({super.key});

  @override
  State<_RadioArea> createState() => _RadioAreaState();
}

class _RadioAreaState extends State<_RadioArea> {
  List<String> cities = ['서울', '대전', '부산', '인천'];
  String? _citieValue = null;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        ...cities.map((city) {
          bool _isSelectedCity = (city == _citieValue);
          return Row(
            children: [
              Radio<String>(
                value: city,
                groupValue: _citieValue,
                activeColor: Colors.greenAccent,
                onChanged: (value) {
                  setState(() {
                    _citieValue = value ?? '서울';
                  });
                },
              ),
              Text(
                city,
                style: TextStyle(
                    fontSize: 20,
                    color: _isSelectedCity ? Colors.red : Colors.black26,
                    fontWeight: _isSelectedCity ? FontWeight.bold : FontWeight.normal),
              )
            ],
          );
        })
      ],
    );
  }
}

class _SliderArea extends StatefulWidget {
  const _SliderArea({super.key});

  @override
  State<_SliderArea> createState() => _SliderAreaState();
}

class _SliderAreaState extends State<_SliderArea> {
  double _phoneNumber = 100000000;

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: _phoneNumber,
      onChanged: (value) {
        setState(() {
          _phoneNumber = value; // null 체크 없이 value 사용
        });
      },
      min: 100000000,
      // 최소값
      max: 109999999,
      // 최대값
      divisions: 999999,
      // divisions 값을 999999로 조정
      label: _phoneNumber.toStringAsFixed(0), // 소수점 없이 출력
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
            onChanged: (value) {
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
            onChanged: (value) {
              setState(() {
                _userPassword = value ?? '';
              });
              print('${value}');
            },
          ),
        ),
        ElevatedButton(
            onPressed: () {
              print('========================');
              print('userName: ${_userName}');
              print('userPassword: ${_userPassword}');
            },
            child: Text('Check!'))
      ],
    );
  }
}
