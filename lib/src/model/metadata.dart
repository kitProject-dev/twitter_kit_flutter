import 'package:json_annotation/json_annotation.dart';
import 'package:twitter_kit/src/model/position.dart';
import 'package:twitter_kit/src/model/timeline_item.dart';

part 'metadata.g.dart';

@JsonSerializable()
class Metadata {
  Metadata(this.timelineId, this.position, this.timelineItems);

  /// The collection object identifier (e.g. "custom-393773270547177472")
  @JsonKey(name: "timeline_id")
  final String timelineId;

  @JsonKey(name: "position")
  final Position position;

  /// The ordered set of Collection items.
  @JsonKey(name: "timeline")
  final List<TimelineItem> timelineItems;

  factory Metadata.fromJson(Map<String, dynamic> json) =>
      _$MetadataFromJson(json);

  Map<String, dynamic> toJson() => _$MetadataToJson(this);
}
