// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
// ignore_for_file: unused_element

import 'package:json_annotation/json_annotation.dart';

part 'query_suggestions_configuration_response_all_of.g.dart';

@JsonSerializable()
final class QuerySuggestionsConfigurationResponseAllOf {
  /// Returns a new [QuerySuggestionsConfigurationResponseAllOf] instance.
  const QuerySuggestionsConfigurationResponseAllOf({
    this.appId,
    this.sourceIndicesAPIKey,
    this.suggestionsIndicesAPIKey,
    this.externalIndicesAPIKey,
  });

  /// Your Algolia application ID.
  @JsonKey(name: r'appId')
  final String? appId;

  /// API key used to read from your source index.
  @JsonKey(name: r'sourceIndicesAPIKey')
  final String? sourceIndicesAPIKey;

  /// API key used to write and configure your Query Suggestions index.
  @JsonKey(name: r'suggestionsIndicesAPIKey')
  final String? suggestionsIndicesAPIKey;

  /// API key used to read from external Algolia indices.
  @JsonKey(name: r'externalIndicesAPIKey')
  final String? externalIndicesAPIKey;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is QuerySuggestionsConfigurationResponseAllOf &&
          other.appId == appId &&
          other.sourceIndicesAPIKey == sourceIndicesAPIKey &&
          other.suggestionsIndicesAPIKey == suggestionsIndicesAPIKey &&
          other.externalIndicesAPIKey == externalIndicesAPIKey;

  @override
  int get hashCode =>
      appId.hashCode +
      sourceIndicesAPIKey.hashCode +
      suggestionsIndicesAPIKey.hashCode +
      externalIndicesAPIKey.hashCode;

  factory QuerySuggestionsConfigurationResponseAllOf.fromJson(
          Map<String, dynamic> json) =>
      _$QuerySuggestionsConfigurationResponseAllOfFromJson(json);

  Map<String, dynamic> toJson() =>
      _$QuerySuggestionsConfigurationResponseAllOfToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}