import 'package:test/test.dart';

import 'open_route_service_test.dart' show apiKey;

void main() => test(
      'Validate API Key Reset',
      () async => expect(apiKey, 'test'),
    );