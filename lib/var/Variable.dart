void main() {
  print('Hello'); //출력

  // Dart. 변수.
  // JavaScript, Java? C#?

  // 타입 4가지
  // 정수 int - ~ + 이지만, 소수는 없는 숫자.
  // 실수 double - ~ + 존재, 소수 또한 존재.
  // 문장 String 'Hello World'
  // 논리 tool true, false => 연산자 존재 한다.
  int num1 = 1004;
  print('int: ${num1}');

  // var, dynamic
  var var1 = 1004; //처음에 입력 받ㅇ른 값의 타입을 dart가 재정의.
  // 위의 기본 4가지 타입 중에서 하나를 정의
  // 처음에 타입이 한 번 정의가 되었을 경우, 타입이 변하지 않습니다.
  print('val: ${var1}');

  dynamic dy1 = 1004;
  print('dy1: ${dy1}'); // 처음에 입력 받은 값의 타입을 dart가 재정의.
  //, 타입이 변한다.

  dy1 = 'Hello';
  print('dy1 : ${dy1}'); // 이런 친구 잘 사용 안함.

  final fal = 1000; // Java, C# 절대로 변하지 않는 값
  const con1 = 2000; // JS, 절대로 변하지 않는 값

  // final은 런타입 상수
  // const 빌드 타입

  //final 코드가 실행될때 확정, final 정의.
  //const 코드가 실행되기 전에도 실행이 확정이야! 라고 컴퓨터가 정의가 된다면 사용이 가능.

  //오늘의 날짜. 12월 17일. //컴퓨터는 실행이 되고, Now()라는 함수가 실행이 완료 되야지, 오늘의 날짜 12월 17일을 정의
}