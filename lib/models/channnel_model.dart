import 'package:flutter/foundation.dart';
import 'package:sport/models/video_model.dart';

class Channel {
  final String id;
  final String title;
  final String profilepicURL;
  final String? subscriberCount;
  final String? videoCount;
  final String uploadplaylistId;
  List<Video>? videos;

  Channel({
    required this.id,
    required this.title,
    required this.profilepicURL,
    this.subscriberCount,
    this.videoCount,
    required this.uploadplaylistId,
    this.videos,
  });
  factory Channel.fromMap(Map<String, dynamic> map) {
    return Channel(
      id: map['id'],
      title: map['snippet']['title'],
      profilepicURL: map['snippet']['thumbnails']['default']['url'],
      subscriberCount: map['statistics']['subscriberCount'],
      videoCount: map['statistics']['subscriberCount'],
      uploadplaylistId: map['contentDetails']['relatedPlaylists']['uploads'],
    );
  }
}
