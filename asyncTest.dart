void main() {
  /// 비동기 프로그래밍
  /// 동기성, 비동기성
  /// 동기 : 모든 코드가 순차적으로 진행 되는 형태
  /// 비동기 : 코드가 동시다발적으로 실행 되어 순차를 보장할 수 없는 상태
  /// async / await / Future : 1 회만 응답을 돌려 받는 경우

  // Future<void> todo(int second) async {
  //   await Future.delayed(Duration(seconds: second));
  //   print('TODO Done in $second seconds');
  // }
  //
  // todo(3);
  // todo(1);
  // todo(5);

  /// async* / yield / Stream : 지속적으로 응답을 돌려 받아야 하는 경우

  Stream<int> todo() async* {
    int counter = 0;

    while(counter <= 10) {
      counter++;
      await Future.delayed(Duration(seconds: 1));
      print('TODO is Running $counter');
      yield counter; // Stream 에 counter 전달 (return 객체를 수시로 전달함.)
    }

    print('TODO is Done');
  }

  todo().listen((event){});



}