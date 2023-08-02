// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

/// The region where the cluster is located.
@JsonEnum(valueField: 'raw')
enum Region {
  /// The region where the cluster is located.
  au(r'au'),

  /// The region where the cluster is located.
  br(r'br'),

  /// The region where the cluster is located.
  ca(r'ca'),

  /// The region where the cluster is located.
  de(r'de'),

  /// The region where the cluster is located.
  eu(r'eu'),

  /// The region where the cluster is located.
  hk(r'hk'),

  /// The region where the cluster is located.
  in_(r'in'),

  /// The region where the cluster is located.
  jp(r'jp'),

  /// The region where the cluster is located.
  sg(r'sg'),

  /// The region where the cluster is located.
  uae(r'uae'),

  /// The region where the cluster is located.
  uk(r'uk'),

  /// The region where the cluster is located.
  usc(r'usc'),

  /// The region where the cluster is located.
  use(r'use'),

  /// The region where the cluster is located.
  usw(r'usw'),

  /// The region where the cluster is located.
  za(r'za');

  const Region(this.raw);
  final dynamic raw;

  dynamic toJson() => raw;

  static Region fromJson(dynamic json) {
    for (final value in values) {
      if (value.raw == json) return value;
    }
    throw ArgumentError.value(json, "raw", "No enum value with that value");
  }

  @override
  String toString() => raw.toString();
}