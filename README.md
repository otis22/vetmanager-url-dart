Getting full url on vetmanager by first part

[![Coverage Status](https://coveralls.io/repos/github/otis22/vetmanager-url-dart/badge.svg?branch=main)](https://coveralls.io/github/otis22/vetmanager-url-dart?branch=main)

## Usage

A simple usage example:


print url like https://test.vetmanager.ru

```dart
import 'package:vetmanager_url/vetmanager_url.dart';

void main() async {
  var url = urlVetmanager('test');
  print(await url.asString());
}
```
