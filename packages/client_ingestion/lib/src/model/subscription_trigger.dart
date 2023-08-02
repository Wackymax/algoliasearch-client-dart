// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
// ignore_for_file: unused_element
import 'package:algolia_client_ingestion/src/model/subscription_trigger_type.dart';

import 'package:json_annotation/json_annotation.dart';

part 'subscription_trigger.g.dart';

@JsonSerializable()
final class SubscriptionTrigger {
  /// Returns a new [SubscriptionTrigger] instance.
  const SubscriptionTrigger({
    required this.type,
  });

  @JsonKey(name: r'type')
  final SubscriptionTriggerType type;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SubscriptionTrigger && other.type == type;

  @override
  int get hashCode => type.hashCode;

  factory SubscriptionTrigger.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionTriggerFromJson(json);

  Map<String, dynamic> toJson() => _$SubscriptionTriggerToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}