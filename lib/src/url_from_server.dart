import 'package:http/http.dart' as http;
import 'dart:convert';
import 'domain.dart';
import 'api_url.dart';
import 'stringable_async.dart';

class UrlFromServer implements StringableAsync {
  final Domain _domain;
  final http.Client _client;

  UrlFromServer(this._domain, this._client);

  @override
  Future<String> asString() async {
    var response = await _client.get((ApiUrl(_domain)).asString());
    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);
      if (json['success']) {
        return json['protocol'] + '://' + json['url'];
      }
    }
    throw Exception("Can't find url for domain");
  }
}
