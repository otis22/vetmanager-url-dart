import 'domain.dart';
import 'url_from_server.dart';
import 'package:http/http.dart' as http;

UrlFromServer urlVetmanager(String domain) {
  return UrlFromServer(Domain(domain), http.Client());
}
