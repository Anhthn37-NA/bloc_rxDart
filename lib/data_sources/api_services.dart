import '../models/video_model.dart';
import '../resources/strings.dart';
import 'api_urls.dart';
import 'package:http/http.dart' as http;// http là tên dẫn đại diện cho thư viện http
import 'dart:convert' as json;
import '../resources/utils/logs.dart';

class ApiServices{
  // fetch all videos
  Future<List<VideoModel>> fetchVideoList() async {
    List<VideoModel> videoList = [];
    var videoListUrl = ApiUrls.VIDEO_URL;

    try {
      final response = await http.get(videoListUrl, headers: {
        'Accept': 'application/json',
      });

      if (response.statusCode == 200) {
        final List<dynamic> jsonList = json.jsonDecode(response.body);
        Log().printJson(json: jsonList);

        for (var item in jsonList) {
          videoList.add(VideoModel.fromJson(item));
        }
      } else {
        print("Server error: ${response.statusCode}");
        throw Exception("Server error");
      }
    } catch (e) {
      print("Lỗi chi tiết: $e");
      print(ERROR_DOWNLOADING);
      throw Exception(e);
    }

    return videoList;
  }

}