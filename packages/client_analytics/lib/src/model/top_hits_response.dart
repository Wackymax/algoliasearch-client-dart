// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
// ignore_for_file: unused_element
import 'package:algolia_client_analytics/src/model/top_hit.dart';

import 'package:json_annotation/json_annotation.dart';

part 'top_hits_response.g.dart';

@JsonSerializable()
final class TopHitsResponse {
  /// Returns a new [TopHitsResponse] instance.
  const TopHitsResponse({
    required this.hits,
  });

  /// Top hits.
  @JsonKey(name: r'hits')
  final List<TopHit> hits;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is TopHitsResponse && other.hits == hits;

  @override
  int get hashCode => hits.hashCode;

  factory TopHitsResponse.fromJson(Map<String, dynamic> json) =>
      _$TopHitsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TopHitsResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}