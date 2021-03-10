// Copyright (c) 2018, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// @dart=2.12

import 'package:json_annotation/json_annotation.dart';

part 'generic_class.g.dart';

@JsonSerializable()
@BadListNullSafetysJsonConverter()
class BadListNullSafety {
  @JsonKey(defaultValue: 'string', includeIfNull: false)
  String bind;

  @JsonKey(defaultValue: <BadListNullSafety>[])
  List<BadListNullSafety> nullSafetyChild;

  BadListNullSafety(this.bind, this.nullSafetyChild);

  factory BadListNullSafety.fromJson(Map<String, dynamic> json) =>
      _$BadListNullSafetyFromJson(json);

  Map<String, dynamic> toJson() => _$BadListNullSafetyToJson(this);
}

class BadListNullSafetysJsonConverter
    implements JsonConverter<List<BadListNullSafety>, List<dynamic>> {
  const BadListNullSafetysJsonConverter();

  @override
  List<BadListNullSafety> fromJson(List<dynamic>? json) {
    if (json == null || !(json is List) || (json is List && json.isEmpty)) {
      return <BadListNullSafety>[];
    }
    return json
        .map((e) => BadListNullSafety.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  @override
  List<Map<String, dynamic>> toJson(List<BadListNullSafety>? object) {
    if (object == null || object.isEmpty) {
      return [<String, dynamic>{}];
    }
    return object.map((e) => e.toJson()).toList();
  }
}
