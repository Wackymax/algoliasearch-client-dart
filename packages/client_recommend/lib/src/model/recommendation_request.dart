// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
// ignore_for_file: unused_element
import 'package:algolia_client_recommend/src/model/recommendation_models.dart';
import 'package:algolia_client_recommend/src/model/search_params_object.dart';

import 'package:json_annotation/json_annotation.dart';

part 'recommendation_request.g.dart';

@JsonSerializable()
final class RecommendationRequest {
  /// Returns a new [RecommendationRequest] instance.
  const RecommendationRequest({
    required this.model,
    required this.objectID,
    required this.indexName,
    required this.threshold,
    this.maxRecommendations,
    this.queryParameters,
    this.fallbackParameters,
  });

  @JsonKey(name: r'model')
  final RecommendationModels model;

  /// Unique object identifier.
  @JsonKey(name: r'objectID')
  final String objectID;

  /// Algolia index name.
  @JsonKey(name: r'indexName')
  final String indexName;

  /// Recommendations with a confidence score lower than `threshold` won't appear in results. > **Note**: Each recommendation has a confidence score of 0 to 100. The closer the score is to 100, the more relevant the recommendations are.
  // minimum: 0
  // maximum: 100
  @JsonKey(name: r'threshold')
  final int threshold;

  /// Maximum number of recommendations to retrieve. If 0, all recommendations will be returned.
  @JsonKey(name: r'maxRecommendations')
  final int? maxRecommendations;

  @JsonKey(name: r'queryParameters')
  final SearchParamsObject? queryParameters;

  @JsonKey(name: r'fallbackParameters')
  final SearchParamsObject? fallbackParameters;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RecommendationRequest &&
          other.model == model &&
          other.objectID == objectID &&
          other.indexName == indexName &&
          other.threshold == threshold &&
          other.maxRecommendations == maxRecommendations &&
          other.queryParameters == queryParameters &&
          other.fallbackParameters == fallbackParameters;

  @override
  int get hashCode =>
      model.hashCode +
      objectID.hashCode +
      indexName.hashCode +
      threshold.hashCode +
      maxRecommendations.hashCode +
      queryParameters.hashCode +
      fallbackParameters.hashCode;

  factory RecommendationRequest.fromJson(Map<String, dynamic> json) =>
      _$RecommendationRequestFromJson(json);

  Map<String, dynamic> toJson() => _$RecommendationRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}