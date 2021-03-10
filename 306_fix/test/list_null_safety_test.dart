// Copyright (c) 2018, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:fix_306/generic_class.dart';
import 'package:test/test.dart';

void main() {
  group('806 Fix', () {
    test('806 Fix', () {
      final json = <String, dynamic>{
        'bind': 'test',
      };
      final expected = ListNullSafety('test', <ListNullSafety>[]);
      final good = ListNullSafety.fromJson(json);
      expect(good.toJson(), expected.toJson());
    });
  });
}
