import 'package:test/test.dart';
// ignore: avoid_relative_lib_imports
import '../lib/src/domain.dart';

void main() {
  group('Test Domain', () {
    test('domain simple test', () {
      expect('test', (Domain('test')).asString());
    });
  });
}
