// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
// ignore_for_file: unused_element

import 'package:json_annotation/json_annotation.dart';

part 'source_update_commercetools.g.dart';

@JsonSerializable()
final class SourceUpdateCommercetools {
  /// Returns a new [SourceUpdateCommercetools] instance.
  const SourceUpdateCommercetools({
    this.storeKeys,
    this.locales,
  });

  /// Unique and immutable key of the referenced Store.
  @JsonKey(name: r'storeKeys')
  final List<String>? storeKeys;

  /// Array of locales that must match the following pattern: ^[a-z]{2}(-[A-Z]{2})?$. For example [\"fr-FR\", \"en\"].
  @JsonKey(name: r'locales')
  final List<String>? locales;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SourceUpdateCommercetools &&
          other.storeKeys == storeKeys &&
          other.locales == locales;

  @override
  int get hashCode => storeKeys.hashCode + locales.hashCode;

  factory SourceUpdateCommercetools.fromJson(Map<String, dynamic> json) =>
      _$SourceUpdateCommercetoolsFromJson(json);

  Map<String, dynamic> toJson() => _$SourceUpdateCommercetoolsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}