// Copyright (c) 2018, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// @dart=2.12

import 'package:json_annotation/json_annotation.dart';

part 'generic_class.g.dart';

@JsonSerializable()
@ListNullSafetysJsonConverter()
class ListNullSafety {
  @JsonKey(defaultValue: 'string', includeIfNull: false)
  String bind;

  @JsonKey(defaultValue: <ListNullSafety>[])
  List<ListNullSafety> nullSafetyChild;

  ListNullSafety(this.bind, this.nullSafetyChild);

  factory ListNullSafety.fromJson(Map<String, dynamic> json) =>
      _$ListNullSafetyFromJson(json);

  Map<String, dynamic> toJson() => _$ListNullSafetyToJson(this);
}

class ListNullSafetysJsonConverter
    implements JsonConverter<List<ListNullSafety>, List<dynamic>> {
  const ListNullSafetysJsonConverter();

  @override
  List<ListNullSafety> fromJson(List<dynamic>? json) {
    if (json == null || !(json is List) || (json is List && json.isEmpty)) {
      return <ListNullSafety>[];
    }
    return json
        .map((e) => ListNullSafety.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  @override
  List<Map<String, dynamic>> toJson(List<ListNullSafety>? object) {
    if (object == null || object.isEmpty) {
      return [<String, dynamic>{}];
    }
    return object.map((e) => e.toJson()).toList();
  }
}
