void main() {
  /// 함수 / 메서드
  /// 프로그래밍에서 가장 기본이 되는 단위 중 하나.
  /// 동작에 대한 단위
  /// 리턴 타입 함수명(매개변수) {
  /// 함수 내 동작 할 코드
  /// }

  int num1 = 10;
  int num2 = 20;

  int sum = add(num1, num2);
  print(sum);

  /// 분기문과 반복문
  /// 분기문 : if-else || switch case
  /// 반복문 : for, for-each || while

  // if 문 / if-else 문

  bool isTrue = true;
  String text1 = 'Hello';
  bool trigger = 10 > 20;

  // if(text1 == 'Hello')
  //   print('True');
  // else
  //   print('False');

  if (trigger)
    print('True');
  else
    print('False');

  int standard = 3;

  if (standard < 0) {
    print('여기는 찍히지 않을 것.');
  } else if (standard == 3) {
    print('여기가 찍힐 것.');
  } else {
    print('모두 거짓.');
  }

  // switch-case
  // Flutter 3.10 / Dart 3.0 버전 이상 부터 변경된 부분이 있는 문법 (범위에 대한 판정)
  int numb = 2;
  switch (numb) {
    case 1:
      print('Switch $numb');
    case 2:
      print('Switch $numb');
    case > 100:
      print('Wow! Big number!! $numb');
    default:
      print('Not 1~99');
  }

  print('반복문 시작');

  // 반복문 : 특정한 코드의 반복을 지시할 때 (for, for in, while, do - while) continue, break
  // for (기준 변수; 조건식; 가변치) { 조건식이 참일 때의 로직 }
  for (int i = 1; i < 11; i++) {
    print('Running For Index $i');
  }

  // for (단일 변수 in 컬렉션 (list/set/map)) { 컬렉션 내 요소의 수/변수 만큼 사용될 반복문 }

  List<int> indexs = [0, 1, 2, 3, 4, 5];
  for (final index in indexs) {
    print(index);
  }

  // while (조건식) { }

  bool isRunning = true;
  int count = 0;

  while (true) {
    if (count >= 5) {
      break;
    }
    count++;
    print('While is Running');
  }

  /// do-while
  /// do {
  /// 선행 진행 or 반복 될 코드
  /// } while (조건);

  int number = 0;

  do {
    number++;

    if (number == 4) {
      continue;
    }

    print('Running Do While $number');
  } while (number < 10);

  /// 예외 처리 Exception

  int? number1;
  int number2 = 10;

  // try {
  //   // 예외가 발생할 것으로 예상 되는 코드
  //   print(10 ~/ 0);
  // } catch(error, stack) {
  //   // 예외가 발생 했을 때 실행 하고자 하는 코드
  //   print(error);
  //   print(stack);
  // } finally {
  //   // 예외가 발생 하든 하지 않든 try / catch 문 이후에 실행 하고자 하는 코드
  //   print('얘는 무조건 실행');
  // }

  try {
    // print(number2 ~/ 0);
    // print(number1!);
    throw Exception('Unknown Error!');
  } on UnsupportedError catch(e, s) {
    print(e.stackTrace);
    print('~/ 해당 연산자는 0으로 나눌 수 없습니다.');
  } on TypeError catch(e, s) {
    print(e.stackTrace);
    print('Null 값이 참조 되었습니다.');
  } catch (e,s) {
    // print('모르는 에러가 발생했습니다.');
    rethrow;
  }


  // print(10 / 0); // Infinity
  // print(10 ~/ 0); // Unhandled exception: IntegerDivisionByZeroException
  print('위 에러 때문에 동작 하지 않음.');



}

int add(int a, int b) {
  return a + b;
}
