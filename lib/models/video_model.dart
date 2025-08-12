
class VideoModel{
  /*API link
  {
  "id": 391,
  "title": "Cùng Giải Trí Với Ron Nhé",
  "author": "Ron English",
  "description": "<p>Hãy để thời gian thật chất lượng để xem hoạt hình và luyện tập tiếng Anh cùng RON nhé!</p>",
  "id_category": 6,
  "name_category": "RonKids 1",
  "information_category": "RonKids 1 có thể được sử dụng trong 21 ngày nhằm kích hoạt vùng ngôn ngữ của trẻ. RonEnglish 1 đã chia nội dung theo các tệp tài liệu folder theo ngày. Mỗi ngày có 3 loại tài liệu như sau: - Audio nghe ban ngày và nghe vô thức khi đi ngủ - Video xem ban ngày khi trẻ thoải mái và sẵn sàng học tập - Songs bài hát nghe mỗi ngày nhằm tăng cường tình yêu ngôn ngữ và cảm nhận vẻ đẹp ngôn ngữ.",
  "type": "TakCharge",
  "url_video": "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",
  "url_youtube": null,
  "url_photo": "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg",
  "week_day_number": "1"
}

  */
  int? id;
  String? title;
  String? author;
  String? description;
  int? id_category;
  String? name_category;
  String? information_category;
  String? type;
  String? url_video;
  String? url_youtube;
  String? url_photo;
  String? week_day_number;

  VideoModel({
    required this.id,
    required this.title,
    required this.author,
    required this.description,
    required this.id_category,
    required this.name_category,
    required this.information_category,
    required this.type,
    required this.url_video,
    required this.url_youtube,
    required this.url_photo,
    required this.week_day_number,
  });

  VideoModel.fromJson(Map json)
      : id = int.tryParse(json['id'].toString()),
        title = json['title'],
        author = json['author'],
        description = json['description'],
        id_category = int.tryParse(json['id_category'].toString()),
        name_category = json['name_category'],
        information_category = json['information_category'],
        type = json['type'],
        url_video = json['url_video'],
        url_youtube = json['url_youtube'],
        url_photo = json['url_photo'],
        week_day_number = json['week_day_number'];


  toJson(){
      return{
        "id": this.id,
        "title": this.title,
        "author": this.author,
        "description": this.description,
        "id_category": this.id_category,
        "name_category": this.name_category,
        "information_category": this.information_category,
        "type": this.type,
        "url_video": this.url_video,
        "url_youtube": this.url_youtube,
        "url_photo": this.url_photo,
        "week_day_number": this.week_day_number,
      };
    }

}

/*

class VideoModel {
  int? id;
  String? title;
  String? author;
  String? description;
  int? idCategory;
  String? nameCategory;
  String? informationCategory;
  String? type;
  String? urlVideo;
  dynamic urlYoutube;
  String? urlPhoto;
  String? weekDayNumber;

  VideoModel({this.id, this.title, this.author, this.description, this.idCategory, this.nameCategory, this.informationCategory, this.type, this.urlVideo, this.urlYoutube, this.urlPhoto, this.weekDayNumber});

  VideoModel.fromJson(Map<String, dynamic> json) {
    if(json["id"] is int) {
      id = json["id"];
    }
    if(json["title"] is String) {
      title = json["title"];
    }
    if(json["author"] is String) {
      author = json["author"];
    }
    if(json["description"] is String) {
      description = json["description"];
    }
    if(json["id_category"] is int) {
      idCategory = json["id_category"];
    }
    if(json["name_category"] is String) {
      nameCategory = json["name_category"];
    }
    if(json["information_category"] is String) {
      informationCategory = json["information_category"];
    }
    if(json["type"] is String) {
      type = json["type"];
    }
    if(json["url_video"] is String) {
      urlVideo = json["url_video"];
    }
    urlYoutube = json["url_youtube"];
    if(json["url_photo"] is String) {
      urlPhoto = json["url_photo"];
    }
    if(json["week_day_number"] is String) {
      weekDayNumber = json["week_day_number"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["title"] = title;
    _data["author"] = author;
    _data["description"] = description;
    _data["id_category"] = idCategory;
    _data["name_category"] = nameCategory;
    _data["information_category"] = informationCategory;
    _data["type"] = type;
    _data["url_video"] = urlVideo;
    _data["url_youtube"] = urlYoutube;
    _data["url_photo"] = urlPhoto;
    _data["week_day_number"] = weekDayNumber;
    return _data;
  }
}

*/