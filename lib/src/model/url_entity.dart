import 'package:json_annotation/json_annotation.dart';

part 'url_entity.g.dart';

@JsonSerializable()
class UrlEntity {
  UrlEntity(this.url, this.expandedUrl, this.displayUrl);

  /// Wrapped URL, corresponding to the value embedded directly into the raw Tweet text, and the
  /// values for the indices parameter.
  @JsonKey(name: "url")
  final String url;

  /// Expanded version of display_url
  @JsonKey(name: "expanded_url")
  final String expandedUrl;

  /// Version of the URL to display to clients.
  @JsonKey(name: "display_url")
  final String displayUrl;

  factory UrlEntity.fromJson(Map<String, dynamic> json) =>
      _$UrlEntityFromJson(json);

  Map<String, dynamic> toJson() => _$UrlEntityToJson(this);
}
