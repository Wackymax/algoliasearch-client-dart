// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
// ignore_for_file: unused_element

import 'package:json_annotation/json_annotation.dart';

part 'auth_api_key_partial.g.dart';

@JsonSerializable()
final class AuthAPIKeyPartial {
  /// Returns a new [AuthAPIKeyPartial] instance.
  const AuthAPIKeyPartial({
    this.key,
  });

  @JsonKey(name: r'key')
  final String? key;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is AuthAPIKeyPartial && other.key == key;

  @override
  int get hashCode => key.hashCode;

  factory AuthAPIKeyPartial.fromJson(Map<String, dynamic> json) =>
      _$AuthAPIKeyPartialFromJson(json);

  Map<String, dynamic> toJson() => _$AuthAPIKeyPartialToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}