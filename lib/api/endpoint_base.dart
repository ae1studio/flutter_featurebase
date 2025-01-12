part of featurebase;

abstract class _EndpointBase {
  // ignore: unused_element
  String get _path;

  final _FeaturebaseApiBase _api;

  _EndpointBase(this._api);

  Dio get dio => _api.dio;
}
