import 'package:api_code/data_sources/api_services.dart';

import '../models/video_model.dart';

class Repository {
  final ApiServices _apiServices = ApiServices();
  //fetching VideoList
  Future<List<VideoModel>> fetAllVideos() => _apiServices.fetchVideoList();
  //fetch User Information

}
