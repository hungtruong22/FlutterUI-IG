import 'package:flutter/material.dart';
import 'model/photo.dart';
import 'package:cached_network_image/cached_network_image.dart';
class MyAblums extends StatelessWidget {
  const MyAblums({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("danh sach hinh anh"),
      ),
      body: FutureBuilder<List<Photo>>(
        future: Photo.fetchData(),
        builder: (BuildContext context, AsyncSnapshot<List<Photo>> snapshot) {
          if (snapshot.hasData) {
            var data = snapshot.data;
            return MyPhoto(lsPhoto: data!);
            //null safe dART 3.0
          }
          else
          {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}


class MyPhoto extends StatelessWidget {
  MyPhoto({super.key, required this.lsPhoto});
  // List<Photo>? lsPhoto;
  List<Photo> lsPhoto;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2 // cố định theo chiều ngang có 2 phần tử ( 2 cột )
        ),
        // itemCount: lsPhoto?.length,
        itemCount: 10,
        // itemBuilder: (BuildContext context, int index){
        //   var photo = lsPhoto?[index];
        //   return Container(
        //     decoration: BoxDecoration(
        //         image: DecorationImage(
        //           image: NetworkImage(photo?.thumbnailUrl??""),
        //           fit: BoxFit.cover,
        //         )
        //     ),
        //   );
        // }



        itemBuilder: (context, index){
      var photo = lsPhoto[index];
      return Column(
        children: [
          Text(photo.title),
          Expanded(child: Image.network(photo.thumbnailUrl)),
        ],
      );
    }

    );
  }
}