import 'package:flutter_test/flutter_test.dart';

void main() {
  setUp(() {
    print("None");
  });
 test("user login Test",(){
  final isUserLogin=true;
  expect(isUserLogin, isTrue);

});
group("user Login Full Test", () { 
  test("user login Test1",(){
    final isUserLogin=true;   
  });
  test("user login Test2",(){
    final isUserLogin=true;   
  });
  test("user login Test3",(){
    final isUserLogin=true;   
  });
  test("user login Test4",(){
    final isUserLogin=true;   
  });
});
}
