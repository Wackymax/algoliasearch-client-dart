// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import 'package:algolia_client_core/algolia_client_core.dart';
import 'package:algolia_client_monitoring/src/deserialize.dart';
import 'package:algolia_client_monitoring/src/version.dart';

import 'package:algolia_client_monitoring/src/model/incidents_response.dart';
import 'package:algolia_client_monitoring/src/model/indexing_time_response.dart';
import 'package:algolia_client_monitoring/src/model/infrastructure_response.dart';
import 'package:algolia_client_monitoring/src/model/inventory_response.dart';
import 'package:algolia_client_monitoring/src/model/latency_response.dart';
import 'package:algolia_client_monitoring/src/model/metric.dart';
import 'package:algolia_client_monitoring/src/model/period.dart';
import 'package:algolia_client_monitoring/src/model/status_response.dart';

final class MonitoringClient implements ApiClient {
  @override
  final String apiKey;

  @override
  final String appId;

  @override
  final ClientOptions options;

  final RetryStrategy _retryStrategy;

  MonitoringClient({
    required this.appId,
    required this.apiKey,
    this.options = const ClientOptions(),
  }) : _retryStrategy = RetryStrategy.create(
          segment: AgentSegment(value: "Monitoring", version: packageVersion),
          appId: appId,
          apiKey: apiKey,
          options: options,
          defaultHosts: () =>
              [
                Host(url: '$appId-dsn.algolia.net', callType: CallType.read),
                Host(url: '$appId.algolia.net', callType: CallType.write),
              ] +
              ([
                Host(url: '$appId-1.algolianet.com'),
                Host(url: '$appId-2.algolianet.com'),
                Host(url: '$appId-3.algolianet.com'),
              ]..shuffle()),
        ) {
    assert(appId.isNotEmpty, '`appId` is missing.');
    assert(apiKey.isNotEmpty, '`apiKey` is missing.');
  }

  /// Send requests to the Algolia REST API.
  /// This method allow you to send requests to the Algolia REST API.
  ///
  /// Parameters:
  /// * [path] Path of the endpoint, anything after \"/1\" must be specified.
  /// * [parameters] Query parameters to apply to the current query.
  /// * [requestOptions] additional request configuration.
  Future<Object> del({
    required String path,
    Map<String, Object>? parameters,
    RequestOptions? requestOptions,
  }) async {
    assert(
      path.isNotEmpty,
      'Parameter `path` is required when calling `del`.',
    );
    final request = ApiRequest(
      method: RequestMethod.delete,
      path: r'/1{path}'.replaceAll('{' r'path' '}', path),
      queryParams: {
        ...?parameters,
      },
    );
    final response = await _retryStrategy.execute(
      request: request,
      options: requestOptions,
    );
    return deserialize<Object, Object>(
      response,
      'Object',
      growable: true,
    );
  }

  /// Send requests to the Algolia REST API.
  /// This method allow you to send requests to the Algolia REST API.
  ///
  /// Parameters:
  /// * [path] Path of the endpoint, anything after \"/1\" must be specified.
  /// * [parameters] Query parameters to apply to the current query.
  /// * [requestOptions] additional request configuration.
  Future<Object> get({
    required String path,
    Map<String, Object>? parameters,
    RequestOptions? requestOptions,
  }) async {
    assert(
      path.isNotEmpty,
      'Parameter `path` is required when calling `get`.',
    );
    final request = ApiRequest(
      method: RequestMethod.get,
      path: r'/1{path}'.replaceAll('{' r'path' '}', path),
      queryParams: {
        ...?parameters,
      },
    );
    final response = await _retryStrategy.execute(
      request: request,
      options: requestOptions,
    );
    return deserialize<Object, Object>(
      response,
      'Object',
      growable: true,
    );
  }

  /// List incidents for selected clusters.
  /// List known incidents for selected clusters.
  ///
  /// Parameters:
  /// * [clusters] Subset of clusters, separated by comma.
  /// * [requestOptions] additional request configuration.
  Future<IncidentsResponse> getClusterIncidents({
    required String clusters,
    RequestOptions? requestOptions,
  }) async {
    assert(
      clusters.isNotEmpty,
      'Parameter `clusters` is required when calling `getClusterIncidents`.',
    );
    final request = ApiRequest(
      method: RequestMethod.get,
      path: r'/1/incidents/{clusters}'.replaceAll(
          '{' r'clusters' '}', Uri.encodeComponent(clusters.toString())),
    );
    final response = await _retryStrategy.execute(
      request: request,
      options: requestOptions,
    );
    return deserialize<IncidentsResponse, IncidentsResponse>(
      response,
      'IncidentsResponse',
      growable: true,
    );
  }

  /// List statuses of selected clusters.
  /// Report whether a cluster is operational.
  ///
  /// Parameters:
  /// * [clusters] Subset of clusters, separated by comma.
  /// * [requestOptions] additional request configuration.
  Future<StatusResponse> getClusterStatus({
    required String clusters,
    RequestOptions? requestOptions,
  }) async {
    assert(
      clusters.isNotEmpty,
      'Parameter `clusters` is required when calling `getClusterStatus`.',
    );
    final request = ApiRequest(
      method: RequestMethod.get,
      path: r'/1/status/{clusters}'.replaceAll(
          '{' r'clusters' '}', Uri.encodeComponent(clusters.toString())),
    );
    final response = await _retryStrategy.execute(
      request: request,
      options: requestOptions,
    );
    return deserialize<StatusResponse, StatusResponse>(
      response,
      'StatusResponse',
      growable: true,
    );
  }

  /// List incidents.
  /// List known incidents for all clusters.
  ///
  /// Parameters:
  /// * [requestOptions] additional request configuration.
  Future<IncidentsResponse> getIncidents({
    RequestOptions? requestOptions,
  }) async {
    final request = ApiRequest(
      method: RequestMethod.get,
      path: r'/1/incidents',
    );
    final response = await _retryStrategy.execute(
      request: request,
      options: requestOptions,
    );
    return deserialize<IncidentsResponse, IncidentsResponse>(
      response,
      'IncidentsResponse',
      growable: true,
    );
  }

  /// Get indexing times.
  /// List the average times for indexing operations for selected clusters.
  ///
  /// Parameters:
  /// * [clusters] Subset of clusters, separated by comma.
  /// * [requestOptions] additional request configuration.
  Future<IndexingTimeResponse> getIndexingTime({
    required String clusters,
    RequestOptions? requestOptions,
  }) async {
    assert(
      clusters.isNotEmpty,
      'Parameter `clusters` is required when calling `getIndexingTime`.',
    );
    final request = ApiRequest(
      method: RequestMethod.get,
      path: r'/1/indexing/{clusters}'.replaceAll(
          '{' r'clusters' '}', Uri.encodeComponent(clusters.toString())),
    );
    final response = await _retryStrategy.execute(
      request: request,
      options: requestOptions,
    );
    return deserialize<IndexingTimeResponse, IndexingTimeResponse>(
      response,
      'IndexingTimeResponse',
      growable: true,
    );
  }

  /// List servers.
  /// List the servers belonging to clusters.  The response depends on whether you authenticate your API request:  - With authentication, the response lists the servers assigned to your Algolia application's cluster.  - Without authentication, the response lists the servers for all Algolia clusters.
  ///
  /// Parameters:
  /// * [requestOptions] additional request configuration.
  Future<InventoryResponse> getInventory({
    RequestOptions? requestOptions,
  }) async {
    final request = ApiRequest(
      method: RequestMethod.get,
      path: r'/1/inventory/servers',
    );
    final response = await _retryStrategy.execute(
      request: request,
      options: requestOptions,
    );
    return deserialize<InventoryResponse, InventoryResponse>(
      response,
      'InventoryResponse',
      growable: true,
    );
  }

  /// Get search latency times.
  /// List the average latency for search requests for selected clusters.
  ///
  /// Parameters:
  /// * [clusters] Subset of clusters, separated by comma.
  /// * [requestOptions] additional request configuration.
  Future<LatencyResponse> getLatency({
    required String clusters,
    RequestOptions? requestOptions,
  }) async {
    assert(
      clusters.isNotEmpty,
      'Parameter `clusters` is required when calling `getLatency`.',
    );
    final request = ApiRequest(
      method: RequestMethod.get,
      path: r'/1/latency/{clusters}'.replaceAll(
          '{' r'clusters' '}', Uri.encodeComponent(clusters.toString())),
    );
    final response = await _retryStrategy.execute(
      request: request,
      options: requestOptions,
    );
    return deserialize<LatencyResponse, LatencyResponse>(
      response,
      'LatencyResponse',
      growable: true,
    );
  }

  /// Get metrics for a given period.
  /// Report the aggregate value of a metric for a selected period of time.
  ///
  /// Parameters:
  /// * [metric] Metric to report.  For more information about the individual metrics, see the response. To include all metrics, use `*` as the parameter.
  /// * [period] Period over which to aggregate the metrics:  - `minute`. Aggregate the last minute. 1 data point per 10 seconds. - `hour`. Aggregate the last hour. 1 data point per minute. - `day`. Aggregate the last day. 1 data point per 10 minutes. - `week`. Aggregate the last week. 1 data point per hour. - `month`. Aggregate the last month. 1 data point per day.
  /// * [requestOptions] additional request configuration.
  Future<InfrastructureResponse> getMetrics({
    required Metric metric,
    required Period period,
    RequestOptions? requestOptions,
  }) async {
    final request = ApiRequest(
      method: RequestMethod.get,
      path: r'/1/infrastructure/{metric}/period/{period}'
          .replaceAll('{' r'metric' '}', Uri.encodeComponent(metric.toString()))
          .replaceAll(
              '{' r'period' '}', Uri.encodeComponent(period.toString())),
    );
    final response = await _retryStrategy.execute(
      request: request,
      options: requestOptions,
    );
    return deserialize<InfrastructureResponse, InfrastructureResponse>(
      response,
      'InfrastructureResponse',
      growable: true,
    );
  }

  /// Test the reachability of clusters.
  /// Test whether clusters are reachable or not.
  ///
  /// Parameters:
  /// * [clusters] Subset of clusters, separated by comma.
  /// * [requestOptions] additional request configuration.
  Future<Map<String, Map<String, bool>>> getReachability({
    required String clusters,
    RequestOptions? requestOptions,
  }) async {
    assert(
      clusters.isNotEmpty,
      'Parameter `clusters` is required when calling `getReachability`.',
    );
    final request = ApiRequest(
      method: RequestMethod.get,
      path: r'/1/reachability/{clusters}/probes'.replaceAll(
          '{' r'clusters' '}', Uri.encodeComponent(clusters.toString())),
    );
    final response = await _retryStrategy.execute(
      request: request,
      options: requestOptions,
    );
    return deserialize<Map<String, Map<String, bool>>, Map>(
      response,
      'Map<String, Map<String, bool>>',
      growable: true,
    );
  }

  /// List cluster statuses.
  /// Report whether clusters are operational.  The response depends on whether you authenticate your API request.  - With authentication, the response includes the status of the cluster assigned to your Algolia application.  - Without authentication, the response lists the statuses of all public Algolia clusters.
  ///
  /// Parameters:
  /// * [requestOptions] additional request configuration.
  Future<StatusResponse> getStatus({
    RequestOptions? requestOptions,
  }) async {
    final request = ApiRequest(
      method: RequestMethod.get,
      path: r'/1/status',
    );
    final response = await _retryStrategy.execute(
      request: request,
      options: requestOptions,
    );
    return deserialize<StatusResponse, StatusResponse>(
      response,
      'StatusResponse',
      growable: true,
    );
  }

  /// Send requests to the Algolia REST API.
  /// This method allow you to send requests to the Algolia REST API.
  ///
  /// Parameters:
  /// * [path] Path of the endpoint, anything after \"/1\" must be specified.
  /// * [parameters] Query parameters to apply to the current query.
  /// * [body] Parameters to send with the custom request.
  /// * [requestOptions] additional request configuration.
  Future<Object> post({
    required String path,
    Map<String, Object>? parameters,
    Object? body,
    RequestOptions? requestOptions,
  }) async {
    assert(
      path.isNotEmpty,
      'Parameter `path` is required when calling `post`.',
    );
    final request = ApiRequest(
      method: RequestMethod.post,
      path: r'/1{path}'.replaceAll('{' r'path' '}', path),
      queryParams: {
        ...?parameters,
      },
      body: body,
    );
    final response = await _retryStrategy.execute(
      request: request,
      options: requestOptions,
    );
    return deserialize<Object, Object>(
      response,
      'Object',
      growable: true,
    );
  }

  /// Send requests to the Algolia REST API.
  /// This method allow you to send requests to the Algolia REST API.
  ///
  /// Parameters:
  /// * [path] Path of the endpoint, anything after \"/1\" must be specified.
  /// * [parameters] Query parameters to apply to the current query.
  /// * [body] Parameters to send with the custom request.
  /// * [requestOptions] additional request configuration.
  Future<Object> put({
    required String path,
    Map<String, Object>? parameters,
    Object? body,
    RequestOptions? requestOptions,
  }) async {
    assert(
      path.isNotEmpty,
      'Parameter `path` is required when calling `put`.',
    );
    final request = ApiRequest(
      method: RequestMethod.put,
      path: r'/1{path}'.replaceAll('{' r'path' '}', path),
      queryParams: {
        ...?parameters,
      },
      body: body,
    );
    final response = await _retryStrategy.execute(
      request: request,
      options: requestOptions,
    );
    return deserialize<Object, Object>(
      response,
      'Object',
      growable: true,
    );
  }

  @override
  void dispose() => _retryStrategy.dispose();
}