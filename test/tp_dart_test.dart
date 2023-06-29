import 'package:test/test.dart';

void main() {
  group('Sum Tests', () {
    num sum(num a, num b) {
      return a + b;
    }

    test('Sum should return the correct result', () {
      expect(sum(2, 3), equals(5));
      expect(sum(-2, 5), equals(3));
      expect(sum(0, 0), equals(0));
    });
  });

  group('SumFails Tests', () {
    void sumFails() {
      throw ArgumentError('Sum failed');
    }

    test('SumFails should throw an ArgumentError', () {
      expect(sumFails, throwsArgumentError);
    });
  });

  group('Variable Type Tests', () {
    test('Variable something should have the expected type', () {
      dynamic something;
      something = 7;
      expect(something.runtimeType, equals(int));

      something = "seven";
      expect(something.runtimeType, equals(String));
    });
  });
}
