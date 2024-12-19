void main(){


  //배열
  //같은 타입의 집합
  //메모리상으로 연달아서 데이터가 존재

  // <제네릭> //<원하는 타입> 정의해서
  List<String> lists = [];
  List<String>? lists1; //dart에서는 null은 기본 기능 x

  //javaScript에서도 사용할수 있다

  lists = ['Apple', 'Banana'];

  for(int i = 0; i<lists.length; i++){
    print('list의 값: ${lists[i]}');
  }


  var arr = [1, 2, 3];
  List<int> list2 = List.from(arr);//1,2,3

  //forEach
  // JS(React), Java(JPA).map
  list2.forEach((item) {
    print('값: ${item}');
  });

  list2.add(4);//추가
  //list2.remove(4)//삭제

  var a1 = list2.map(
      (item)=>1000+item
  );

  a1.forEach((item){
    print('값: ${item}');
  });
  //list가 값이 어떻게 생겼는지 조회
  a1.forEach(print); //class (변수)값이 모인 집합
  //(변수) => 변하는값 x
  //실제적인 데이터가 있는 주소를 저장한값
}