import 'stringable.dart';

class Domain implements Stringable {
  final String _domain;

  Domain(this._domain);

  @override
  String asString() {
    return _domain;
  }
}
