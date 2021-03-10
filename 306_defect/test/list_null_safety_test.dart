// Copyright (c) 2018, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:defect_306/generic_class.dart';
import 'package:test/test.dart';

void main() {
  group('806 Defect', () {
    test('806 Defect', () {
      final json = <String, dynamic>{
        'bind': 'test',
      };
      final bad = BadListNullSafety.fromJson(json);
      print(bad);
    });
  });
}
