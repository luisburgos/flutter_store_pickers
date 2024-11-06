// Import the test package and Counter class
import 'package:test/test.dart';

void main() {
  test('Dummy test', () {
    var counter = 1;
    counter++;
    expect(counter, 2);
  });
}
