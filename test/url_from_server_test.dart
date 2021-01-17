import 'package:test/test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
// ignore: avoid_relative_lib_imports
import '../lib/src/url_from_server.dart';
// ignore: avoid_relative_lib_imports
import '../lib/src/domain.dart';

void main() {
  group('Test UrlFromServer', () {
    test('UrlFrolmServer with valid response', () async {
      var client = MockClient((request) async {
        return http.Response(
            '{"protocol":"https","host":"vetmanager.ru","url":"test.vetmanager.ru","success":true}',
            200,
            headers: {'content-type': 'application/json'});
      });

      final url = UrlFromServer(Domain('test'), client);
      expect(await url.asString(), 'https://test.vetmanager.ru');
    });

    test('UrlFromServer with invalid response', () async {
      var client = MockClient((request) async {
        return http.Response('Error', 500,
            headers: {'content-type': 'application/text'});
      });

      final url = UrlFromServer(Domain('test'), client);
      expect(url.asString(), throwsException);
    });
  });
}
