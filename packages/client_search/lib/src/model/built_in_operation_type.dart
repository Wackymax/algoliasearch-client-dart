// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

/// Operation to apply to the attribute.
@JsonEnum(valueField: 'raw')
enum BuiltInOperationType {
  increment(r'Increment'),
  decrement(r'Decrement'),
  add(r'Add'),
  remove(r'Remove'),
  addUnique(r'AddUnique'),
  incrementFrom(r'IncrementFrom'),
  incrementSet(r'IncrementSet');

  const BuiltInOperationType(this.raw);
  final dynamic raw;

  dynamic toJson() => raw;

  static BuiltInOperationType fromJson(dynamic json) {
    for (final value in values) {
      if (value.raw == json) return value;
    }
    throw ArgumentError.value(json, "raw", "No enum value with that value");
  }

  @override
  String toString() => raw.toString();
}
