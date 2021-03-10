// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.12

part of 'generic_class.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BadListNullSafety _$BadListNullSafetyFromJson(Map<String, dynamic> json) {
  return BadListNullSafety(
    json['bind'] as String? ?? 'string',
    const BadListNullSafetysJsonConverter()
            .fromJson(json['nullSafetyChild'] as List) ??
        [],
  );
}

Map<String, dynamic> _$BadListNullSafetyToJson(BadListNullSafety instance) =>
    <String, dynamic>{
      'bind': instance.bind,
      'nullSafetyChild': const BadListNullSafetysJsonConverter()
          .toJson(instance.nullSafetyChild),
    };
