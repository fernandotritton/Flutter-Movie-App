import 'package:peliculas2/model/video.dart';

class VideoResponse {
  final List<Video> videos;
  final String error;

  VideoResponse(this.videos, this.error);

  VideoResponse.fromJson(Map<String, dynamic> json)
  : videos = (json["results"] as List).map((i) => Video.fromJason(i)).toList(),
    error = "";

  VideoResponse.witherror(String errorValue)
  : videos = List(),
    error = errorValue;

  static Future<VideoResponse> withError(String s) {} 
}