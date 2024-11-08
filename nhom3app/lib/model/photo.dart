import 'dart:convert';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:http/http.dart' as http;
class Photo {
  int albumId;
  int id;
  String title;
  String url;
  String thumbnailUrl;

  Photo({
    required this.albumId,
    required this.id,
    required this.title,
    required this.url,
    required this.thumbnailUrl,
  });
  // dynamic là kiểu dl bất kì
  factory Photo.fromJson(Map<String, dynamic>json){
    return Photo(
        albumId: json['albumId'],
        id: json['id'],
        title: json['title'],
        url: json['url'],
        thumbnailUrl: json['thumbnailUrl']
    );
  }
  static Future<List<Photo>> fetchData() async{
    var apiUrl = 'https://jsonplaceholder.typicode.com/photos';
    var response=  await http.get(Uri.parse(apiUrl));
    if ( response.statusCode == 200){
      var body = response.body;
      var json = jsonDecode(body);

      var ls = json.map<Photo>((e){
        return Photo.fromJson(e);
      }).toList();
      return ls;
    }
    else
      throw new Exception("khong co du lieu tra ve");
  }
}
// json to dart -> quicktype -> open Qicktype -> copy file ở json https://jsonplaceholder.typicode.com/ -> đặt tên -> copy file
// pub.dev-> thư viện http ->copy -> dán vào pubspec.yaml -> pub get

// static Future<List<Photo>> fetData() async{
// var url = 'https://jsonplaceholder.typicode.com/photos';
// var response = await  http.get(Uri.parse(url));
// print(response.statusCode);
// if(response.statusCode == 200){ // 200 là mã code chạy thành công
// var content = response.body;
// var jsons = jsonDecode(content);
// // print(jsons);
// List<Map<String, dynamic>> json = jsonDecode(content);
// List<Photo> lsPhoto = json.map<Photo>((e){
// return Photo.fromjson(e);
// }).toList();
// return lsPhoto;
// }
// else{
// throw new Exception("Lỗi lấy d liệu photo");
// }
// }