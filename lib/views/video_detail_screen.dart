import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/video_model.dart';
import '../resources/strings.dart';

class VideoDetailScreen extends StatelessWidget {
  final VideoModel videoModel;
  const VideoDetailScreen({super.key,required this.videoModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(VIDEO_DETAIL),
        centerTitle: true,
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        child: Column(
          children: [
            Image.network(videoModel.url_photo ?? ''),
            Text(videoModel.title ?? '',style: TextStyle(fontWeight: FontWeight.bold),),
            Text(videoModel.description ?? '',softWrap: true,),
          ],
        ),
      )
    );
  }
}
