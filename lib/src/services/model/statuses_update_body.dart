import 'package:json_annotation/json_annotation.dart';
import 'package:twitter_kit/src/services/model/convert_form.dart';

part 'statuses_update_body.g.dart';

@JsonSerializable()
class StatusesUpdateBody extends RequestBody {
  StatusesUpdateBody(this.status,
      {this.inReplyToStatusId,
      this.possiblySensitive,
      this.latitude,
      this.longitude,
      this.placeId,
      this.displayCoordinates,
      this.trimUser,
      this.mediaIds});

  @JsonKey(name: "status")
  final String status;

  @JsonKey(name: "in_reply_to_status_id")
  final int inReplyToStatusId;

  @JsonKey(name: "possibly_sensitive")
  final bool possiblySensitive;

  @JsonKey(name: "lat")
  final double latitude;

  @JsonKey(name: "long")
  final double longitude;

  @JsonKey(name: "place_id")
  final String placeId;

  @JsonKey(name: "display_coordinates")
  final bool displayCoordinates;

  @JsonKey(name: "trim_user")
  final bool trimUser;

  @JsonKey(name: "media_ids")
  final String mediaIds;

  factory StatusesUpdateBody.fromJson(Map<String, dynamic> json) =>
      _$StatusesUpdateBodyFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StatusesUpdateBodyToJson(this);
}
