import 'package:json_annotation/json_annotation.dart';
import 'package:twitter_kit/src/model/content.dart';
import 'package:twitter_kit/src/model/metadata.dart';

part 'twitter_collection.g.dart';

@JsonSerializable()
class TwitterCollection {
  TwitterCollection(this.contents, this.metadata);

  @JsonKey(name: "objects")
  final Content contents;

  @JsonKey(name: "response")
  final Metadata metadata;

  factory TwitterCollection.fromJson(Map<String, dynamic> json) =>
      _$TwitterCollectionFromJson(json);

  Map<String, dynamic> toJson() => _$TwitterCollectionToJson(this);
}
