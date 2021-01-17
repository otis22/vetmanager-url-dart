import 'stringable.dart';
import 'domain.dart';

class ApiUrl implements Stringable {
  final Domain _domain;
  ApiUrl(this._domain);

  @override
  String asString() =>
      'https://billing-api.vetmanager.cloud/host/' + _domain.asString();
}
