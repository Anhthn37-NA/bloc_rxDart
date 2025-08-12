import 'package:api_code/data_sources/repository.dart';
import 'package:rxdart/rxdart.dart';

import '../models/video_model.dart';

class VideoListBloc{
  final _repository = Repository();

  final videoListSubject = PublishSubject<List<VideoModel>>();

  //put Data into Bloc

putVideoListIntoBloc() async{
  List<VideoModel> videoList = await _repository.fetAllVideos();
  videoListSubject.sink.add(videoList);
}

//Get Data Stream to view

Stream<List<VideoModel>> get videoListStream => videoListSubject.stream;

dispose(){
  videoListSubject.close();
}

}