import 'package:test/test.dart';
// ignore: avoid_relative_lib_imports
import '../lib/src/api_url.dart';
// ignore: avoid_relative_lib_imports
import '../lib/src/domain.dart';

void main() {
  group('Test ApiUrl', () {
    test('api url simple test', () {
      expect('https://billing-api.vetmanager.cloud/host/test',
          (ApiUrl(Domain('test'))).asString());
    });
  });
}
