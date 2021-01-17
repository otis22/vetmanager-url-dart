A library for Dart developers.

## Usage

A simple usage example:

```dart
import 'package:vetmanager_url/vetmanager_url.dart';

void main() async {
  var url = urlVetmanager('devtr6');
  print(await url.asString());
}
```
