import 'dart:js_util';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nhom3app/my_class_page.dart';
import 'package:nhom3app/my_home_page.dart';

class MyIgPage extends StatelessWidget {

  MyIgPage({Key? key}) : super(key: key);

  List<AccountFriendsStories> lsStories = [
    AccountFriendsStories(storyColor: Colors.deepOrange, accountName: "Cristiano", imageMain: 'assest/anh7.jpg'),
    AccountFriendsStories(storyColor: Colors.deepOrange, accountName: "tdinh23", imageMain: 'assest/tamdinh23.jpg'),
    AccountFriendsStories(storyColor: Colors.deepOrange, accountName: "ribisachi", imageMain: 'assest/ribi.jpg'),
    AccountFriendsStories(storyColor: Colors.deepOrange, accountName: "manchesterunited", imageMain: 'assest/manu.jpg'),
    AccountFriendsStories(storyColor: Colors.deepOrange, accountName: "alnassr", imageMain: 'assest/alnassr.jpg'),
    AccountFriendsStories(storyColor: Colors.deepOrange, accountName: "sontungmtp", imageMain: 'assest/mtp.jpg'),
    AccountFriendsStories(storyColor: Colors.deepOrange, accountName: "leomessi", imageMain: 'assest/leo.jpg'),

  ];

  List<MenuItemBottom> lsMenuItemBottom = [
    MenuItemBottom(iconData: Icons.home, color: Colors.black),
    MenuItemBottom(iconData: Icons.search, color: Colors.black),
    MenuItemBottom(iconData: Icons.add_box_outlined, color: Colors.black),
    MenuItemBottom(iconData: FontAwesomeIcons.clapperboard, color: Colors.black),
    MenuItemBottom(iconData: Icons.account_circle_outlined, color:Colors.black),
  ];

  List<AccountNews> lsAccountNews = [
    AccountNews(accountImage: 'assest/anh7.jpg', accountName: 'cristiano', commentCount: '100.234',
        title: 'Another important victory and 9 wins in a row! Well done Team! Let’s keep the good work!',
        likesCount: '80.225.111', post: 'assest/cr7.jpg', postTime: '1 ngày trước', iconColor: Colors.blue),
    AccountNews(accountImage: 'assest/leo.jpg', accountName: 'leomessi',
        commentCount: '300.546', title: 'Un triunfo muy valioso para comenzar este nuevo camino! Gracias a todos por el apoyo una vez más!!!',
        likesCount: '1.256.321', post: 'assest/leo2.jpg',postTime: '3 ngày trước', iconColor: Colors.blue),
    AccountNews(accountImage: 'assest/mtp.jpg', accountName: 'sontungmtp', commentCount: '145.985',
        title: 'My new song', post: 'assest/mtp.jpg', likesCount: '500.126',postTime: '1 ngày trước', iconColor: Colors.blue),
    AccountNews(accountImage: 'assest/tamdinh23.jpg', accountName: 'tdinh123', title: 'Shout out to NikeACFC for hooking me up with some new Nike Gear!!! If you are in Hanoi come thru to Nike Vincom Ba Trieu and get some fresh gear!!! ',
        post: 'assest/tamdinh23.jpg', commentCount: '50.324', likesCount: '100.212', postTime: '9 tiếng trước'),
    AccountNews(accountName: 'ribisachi', accountImage: 'assest/ribi.jpg',
        title: 'On cloudy day', post: 'assest/ribi.jpg', commentCount: '3.202',
        likesCount: '30.202', postTime: '4 tiếng trước'),
  ];

  List<AccountComment> lsAccountComment = [
    AccountComment(accountImg: 'assest/leo.jpg', accountName: 'leomessi', acccountComments: 'You are the GOAT',
        commentTime: '1 ngày', commentCount: '200.245', likesCount: '1.100.124', iconColor: Colors.blue),
    AccountComment(accountImg: 'assest/tamdinh23.jpg', accountName: 'tamdinh23', acccountComments: 'The best of all time',
        commentTime:'20 tiếng',commentCount: '10.234', likesCount: '500.689',),
    AccountComment(accountImg: 'assest/ribi.jpg', accountName: 'ribisachi', acccountComments: 'My idol <3',
        commentTime: '22 tiếng', commentCount: '12.015', likesCount: '300.146'),
    AccountComment(accountImg: 'assest/alnassr.jpg', accountName: 'alnassr', acccountComments: 'Our fighter',
        commentTime: '1 ngày', commentCount: '500.456', likesCount: '600.555', iconColor: Colors.blue),
  ];

  Color _iconColor = Colors.white;


  int _selectedIndex = 1;
  static List<Widget> _tabs = [

    // MyHomePage(),
    // MyIgPage(),

    // MyClassPage(),
  ];


  @override
  Widget build(BuildContext context) {

    // precacheImage(NetworkImage("https://img.freepik.com/free-vector/student-classroom-template_1308-26333.jpg") , context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            TextButton(
                onPressed: (){
                  showMenu(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      context: context,
                      position: RelativeRect.fromSize(Rect.fromLTRB(20, 50, 0, 0),Size(400, 200)),
                      items: [
                        PopupMenuItem(
                            child: Column(
                              children: [
                                  Column(
                                    children: [
                                      TextButton(
                                        onPressed: (){

                                        },
                                        child: Row(
                                          children: [
                                            Text(
                                              "Đang theo dõi",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18,
                                              ),
                                            ),
                                            Icon(Icons.people_alt_rounded, color: Colors.black,),
                                          ],
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        ),
                                      ),
                                      // tạo thanh ngang
                                      Container(
                                        height: 1,
                                        margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                        decoration: BoxDecoration(
                                          border: Border.all(color: Colors.grey, style: BorderStyle.solid),
                                        ),
                                      ),
                                      TextButton(
                                        onPressed: (){

                                        },
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Yêu thích",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18,
                                              ),
                                            ),
                                            Icon(Icons.star_border_outlined, color: Colors.black,)
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                              ],
                            ),
                        ),
                      ],
                  );
                },
                child: Container(
                  child: Row(
                    children: [
                      Text(
                          "Instagram",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Lobster',
                        fontSize: 26,
                      ),
                      ),
                      Icon(FontAwesomeIcons.chevronDown, color: Colors.black, size: 15),
                    ],
                  ),
                ),
            ),
          ],
        ),
          actions: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 9, 0, 0),
              child: Stack(
                children: [
                  IconButton(
                    onPressed: (){

                    },
                    icon: Icon(Icons.favorite_border, color: Colors.black,),
                  ),
                  Positioned(
                    top: 8,
                    right: 8,
                    child: Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                          border: Border.all(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: (){

              },
              icon: Icon(FontAwesomeIcons.facebookMessenger,
                size: 20, //Icon Size
                color: Colors.black,
              ),
            ),
            ],
          ),
      // body: _tabs[_selectedIndex],
      body: Center(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            // stories
            Container(
              margin: EdgeInsets.fromLTRB(15, 9, 0, 0),
              height: 90,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 9, 0, 0),
                        child: Stack(
                          children: [
                            FloatingActionButton(
                              onPressed: (){

                              },
                              child: Container(

                                decoration: BoxDecoration(
                                  // border: Border.all(color: Colors.green, width: 3),
                                  borderRadius: BorderRadius.circular(50),
                                  image: DecorationImage(
                                    image: NetworkImage('assest/cunyeu.jpg'),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.blue,
                                  border: Border.all(color: Colors.white),
                                ),
                                child: Icon(Icons.add, size: 15, color: Colors.white,),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 8, 0, 0),
                        child: Text(
                          "Tin của bạn",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 9, 10, 0),
                    height: 90,
                    width: MediaQuery.of(context).size.width,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: lsStories.map((e){
                        return Column(
                          children: [
                            Container(
                              child: FloatingActionButton(
                                onPressed: (){

                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(color: e.storyColor, width: 3),
                                    borderRadius: BorderRadius.circular(50),
                                    image: DecorationImage(
                                      image: NetworkImage(e.imageMain),
                                    ),
                                  ),
                                ),
                              ),
                              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 8, 0, 0),
                              child: Text(
                                e.accountName,
                                style: TextStyle(
                                  fontSize: 12,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              width: 50,
                            ),
                          ],
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
            // tạo thanh ngang
            Container(
              height: 1,
              margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, style: BorderStyle.solid),
              ),
            ),
            // Bài đăng
            Container(
              // height: 700,
              height: MediaQuery.of(context).size.height,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: lsAccountNews.map((e){
                  return Container(
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      FloatingActionButton.small(
                                        onPressed: (){

                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                            //border: Border.all(color: e.storyColor, width: 3),
                                            borderRadius: BorderRadius.circular(50),
                                            image: DecorationImage(
                                              image: NetworkImage(e.accountImage),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                        child: Row(
                                          children: [
                                            Text(
                                              e.accountName,
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.fromLTRB(3, 2, 0, 0),
                                              child: Icon(e.iconReal, color: e.iconColor,size: 14),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                IconButton(
                                  onPressed: (){
                                    showModalBottomSheet(
                                      isScrollControlled: true,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(20)),
                                      ),
                                      context: context,
                                      builder: (BuildContext context) {
                                        return FractionallySizedBox(
                                          heightFactor: 0.75,
                                          child: Container(
                                              margin: EdgeInsets.fromLTRB(20, 16, 10, 16),
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(20)
                                              ),

                                              // padding: EdgeInsets.fromLTRB(20, 10, 0, 20),
                                              child: Column(
                                                children: [
                                                  Container(
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Container(
                                                          child: Column(
                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                            children: [
                                                              IconButton(
                                                                  onPressed: (){

                                                                  },
                                                                  icon: Icon(FontAwesomeIcons.bookmark)
                                                              ),
                                                              Text(
                                                                "Lưu",
                                                                style: TextStyle(
                                                                    fontSize: 12),
                                                              ),
                                                            ],
                                                          ),
                                                          decoration: BoxDecoration(
                                                            borderRadius: BorderRadius.circular(20),
                                                            color: Color(0xFFe4e6eb),
                                                          ),
                                                          height: 80,
                                                          width: 220,
                                                          margin: EdgeInsets.fromLTRB(0, 20, 10, 0),
                                                        ),
                                                        Container(
                                                          child: Column(
                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                            children: [
                                                              IconButton(
                                                                  onPressed: (){

                                                                  },
                                                                  icon: Icon(Icons.qr_code_scanner_outlined)
                                                              ),
                                                              Text(
                                                                "Mã QR",
                                                                style: TextStyle(
                                                                    fontSize: 12),
                                                              ),
                                                            ],
                                                          ),
                                                          decoration: BoxDecoration(
                                                            borderRadius: BorderRadius.circular(20),
                                                            color: Color(0xFFe4e6eb),
                                                          ),
                                                          height: 80,
                                                          width: 220,
                                                          margin: EdgeInsets.fromLTRB(0, 20, 10, 0),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    child: Row(
                                                      children: [
                                                        Container(
                                                          child: Row(
                                                            children: [
                                                              Container(
                                                                child: IconButton(
                                                                  onPressed: (){

                                                                  },
                                                                  icon: Icon(FontAwesomeIcons.locationArrow,),
                                                                ),
                                                                margin: EdgeInsets.fromLTRB(6, 0, 0, 0),
                                                              ),
                                                              Container(
                                                                child: Column(
                                                                  children: [
                                                                    Text(
                                                                      "Chúng tôi đã thay đổi vị trí",
                                                                      style: TextStyle(
                                                                        fontSize: 12,
                                                                      ),
                                                                    ),
                                                                    Text(
                                                                      "Xem nơi để chia sẻ và sao chép liên kết",
                                                                      style: TextStyle(
                                                                        color: Colors.blue,
                                                                        fontSize: 12,
                                                                        fontWeight: FontWeight.bold,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                ),
                                                                margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Container(
                                                          child: Column(
                                                            children: [
                                                              Icon(Icons.close, size: 12)
                                                            ],
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                          ),
                                                          margin: EdgeInsets.fromLTRB(0, 11, 6, 0),
                                                        ),
                                                      ],
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    ),
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(20),
                                                      color: Color(0xFFe4e6eb),
                                                    ),
                                                    width: MediaQuery.of(context).size.width,
                                                    height: 60,
                                                    margin: EdgeInsets.fromLTRB(0, 10, 10, 0),
                                                  ),
                                                  Container(
                                                    child: Column(
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Container(
                                                              child: IconButton(
                                                                onPressed: (){

                                                                },
                                                                icon: Icon(Icons.star_border_outlined),
                                                              ),
                                                              margin: EdgeInsets.fromLTRB(6, 5, 0, 0),
                                                            ),
                                                            Container(
                                                              child: Text(
                                                                "Thêm vào mục yêu thích",
                                                              ),
                                                              margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                                            ),
                                                          ],
                                                        ),
                                                        // tạo thanh ngang
                                                        Container(
                                                          height: 1,
                                                          margin: EdgeInsets.fromLTRB(0, 4, 0, 4),
                                                          decoration: BoxDecoration(
                                                            border: Border.all(color: Color(0xFFCFD1D5), style: BorderStyle.solid),
                                                          ),
                                                        ),
                                                        Row(
                                                          children: [
                                                            Container(
                                                              child: IconButton(
                                                                onPressed: (){

                                                                },
                                                                icon: Icon(Icons.person_off_outlined),
                                                              ),
                                                              margin: EdgeInsets.fromLTRB(6, 0, 0, 5),
                                                            ),
                                                            Container(
                                                              child: Text(
                                                                "Bỏ theo dõi",
                                                              ),
                                                              margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(20),
                                                      color: Color(0xFFe4e6eb),
                                                    ),
                                                    margin: EdgeInsets.fromLTRB(0, 10, 10, 10),
                                                  ),
                                                  Container(
                                                    child: Column(
                                                      children: [
                                                        Container(
                                                          child: Row(
                                                            children: [
                                                              Container(
                                                                child: IconButton(
                                                                  onPressed: (){

                                                                  },
                                                                  icon: Icon(Icons.account_circle_outlined),
                                                                ),
                                                              ),
                                                              Container(
                                                                child: Text(
                                                                  "Giới thiệu về tài khoản này",
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          margin: EdgeInsets.fromLTRB(6, 5, 0, 0),
                                                        ),
                                                        // tạo thanh ngang
                                                        Container(
                                                          height: 1,
                                                          margin: EdgeInsets.fromLTRB(0, 4, 0, 4),
                                                          decoration: BoxDecoration(
                                                            border: Border.all(color: Color(0xFFCFD1D5), style: BorderStyle.solid),
                                                          ),
                                                        ),
                                                        Container(
                                                          child: Row(
                                                            children: [
                                                              Container(
                                                                child: IconButton(
                                                                  onPressed: (){

                                                                  },
                                                                  icon: Icon(Icons.info_outline),
                                                                ),
                                                              ),
                                                              Container(
                                                                child: Text(
                                                                  "Lý do bạn nhìn thấy bài viết này",
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          margin: EdgeInsets.fromLTRB(6, 0, 0, 0),
                                                        ),
                                                        // tạo thanh ngang
                                                        Container(
                                                          height: 1,
                                                          margin: EdgeInsets.fromLTRB(0, 4, 0, 4),
                                                          decoration: BoxDecoration(
                                                            border: Border.all(color: Color(0xFFCFD1D5), style: BorderStyle.solid),
                                                          ),
                                                        ),
                                                        Container(
                                                          child: Row(
                                                            children: [
                                                              Container(
                                                                child: IconButton(
                                                                  onPressed: (){

                                                                  },
                                                                  icon: Icon(FontAwesomeIcons.eyeSlash),
                                                                ),
                                                              ),
                                                              Container(
                                                                child: Text(
                                                                  "Ẩn",
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          margin: EdgeInsets.fromLTRB(6, 0, 0, 0),
                                                        ),
                                                        // tạo thanh ngang
                                                        Container(
                                                          height: 1,
                                                          margin: EdgeInsets.fromLTRB(0, 4, 0, 4),
                                                          decoration: BoxDecoration(
                                                            border: Border.all(color: Color(0xFFCFD1D5), style: BorderStyle.solid),
                                                          ),
                                                        ),
                                                        Container(
                                                          child: Row(
                                                            children: [
                                                              Container(
                                                                child: IconButton(
                                                                  onPressed: (){

                                                                  },
                                                                  icon: Icon(FontAwesomeIcons.triangleExclamation,
                                                                      color: Colors.red),
                                                                ),
                                                              ),
                                                              Container(
                                                                child: Text(
                                                                  "Báo cáo",
                                                                  style: TextStyle(
                                                                    color: Colors.red,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          margin: EdgeInsets.fromLTRB(6, 0, 0, 5),
                                                        ),
                                                      ],
                                                    ),
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(20),
                                                      color: Color(0xFFe4e6eb),
                                                    ),
                                                    margin: EdgeInsets.fromLTRB(0, 10, 10, 10),
                                                  ),
                                                ],
                                              )
                                          ),
                                        );
                                      },
                                    );
                                  },
                                  icon: Icon(Icons.more_horiz),),
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 400,
                            margin: EdgeInsets.fromLTRB(0, 15, 0, 4),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(e.post),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Container(
                                        child: IconButton(
                                          onPressed: (){

                                          },
                                          icon: Icon(Icons.favorite_border,),
                                        ),
                                      ),
                                      Container(
                                        child: IconButton(
                                          onPressed: (){
                                            showModalBottomSheet(
                                                isScrollControlled: true,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                                ),
                                                context: context,
                                                builder: (BuildContext context){
                                                  return FractionallySizedBox(
                                                    heightFactor: 0.75,
                                                    child: Container(
                                                      margin: EdgeInsets.fromLTRB(10, 16, 10, 16),
                                                      decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(20)
                                                      ),
                                                      child: Container(
                                                        child: Column(
                                                          children: [
                                                            Container(
                                                              child: Row(
                                                                children: [
                                                                  Text("Bình luận",
                                                                    style: TextStyle(
                                                                      fontSize: 22,
                                                                      fontWeight: FontWeight.bold,
                                                                    ),)
                                                                ],
                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                              ),
                                                            ),
                                                            // tạo thanh ngang
                                                            Container(
                                                              height: 1,
                                                              margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                                              decoration: BoxDecoration(
                                                                border: Border.all(color: Colors.grey, style: BorderStyle.solid),
                                                              ),
                                                            ),
                                                            Container(
                                                              height: 400,
                                                              child: ListView(
                                                                scrollDirection: Axis.vertical,
                                                                children: lsAccountComment.map((e){
                                                                  return Container(
                                                                    child: Column(
                                                                      children: [
                                                                        Container(
                                                                          child: Row(
                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                            children: [
                                                                              Container(
                                                                                child: Row(
                                                                                  children: [
                                                                                    FloatingActionButton.small(
                                                                                      onPressed: (){

                                                                                      },
                                                                                      child: Container(
                                                                                        decoration: BoxDecoration(
                                                                                          //border: Border.all(color: e.storyColor, width: 3),
                                                                                          borderRadius: BorderRadius.circular(50),
                                                                                          image: DecorationImage(
                                                                                            image: NetworkImage(e.accountImg),
                                                                                            fit: BoxFit.cover,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Container(
                                                                                      margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
                                                                                      child: Row(
                                                                                        children: [
                                                                                          Text(
                                                                                            e.accountName,
                                                                                            style: TextStyle(
                                                                                              fontSize: 14,
                                                                                              fontWeight: FontWeight.bold,
                                                                                              color: Colors.black,
                                                                                            ),
                                                                                          ),
                                                                                          Container(
                                                                                            margin: EdgeInsets.fromLTRB(3, 2, 0, 0),
                                                                                            child: Icon(e.iconReal, color: e.iconColor,size: 14),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                              Container(
                                                                                margin: EdgeInsets.fromLTRB(5, 18, 0, 0),
                                                                                child: Text(
                                                                                  e.commentTime,
                                                                                  style: TextStyle(
                                                                                    fontSize: 13,
                                                                                    color: Colors.grey,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          child: Row(
                                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              Column(
                                                                                children: [
                                                                                  Container(
                                                                                    margin: EdgeInsets.fromLTRB(50, 0, 0, 0),
                                                                                    child: Row(
                                                                                      children: [
                                                                                        Container(
                                                                                          child: Row(
                                                                                            children: [
                                                                                              Container(
                                                                                                child: Text(
                                                                                                  e.acccountComments,
                                                                                                ),
                                                                                              )
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Column(
                                                                                children: [
                                                                                  Container(
                                                                                    child: IconButton(
                                                                                        onPressed: (){

                                                                                        },
                                                                                        icon: Icon(Icons.favorite_border, size: 14,)),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          margin: EdgeInsets.fromLTRB(50, 0, 0, 0),
                                                                          child: Row(
                                                                            children: [
                                                                              Container(
                                                                                child: Text(
                                                                                  "${e.likesCount} lượt thích",
                                                                                  style: TextStyle(
                                                                                      fontSize: 12,
                                                                                      color: Colors.grey,
                                                                                      fontWeight: FontWeight.w800
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Container(
                                                                                  child: TextButton(
                                                                                    onPressed: (){

                                                                                    },
                                                                                    child: Text(
                                                                                      "Trả lời",
                                                                                      style: TextStyle(
                                                                                          fontSize: 12,
                                                                                          color: Colors.grey,
                                                                                          fontWeight: FontWeight.w800
                                                                                      ),
                                                                                    ),
                                                                                  )
                                                                              ),
                                                                              Container(
                                                                                  child: TextButton(
                                                                                    onPressed: (){

                                                                                    },
                                                                                    child: Text(
                                                                                      "Xem bản dịch",
                                                                                      style: TextStyle(
                                                                                          fontSize: 12,
                                                                                          color: Colors.grey,
                                                                                          fontWeight: FontWeight.w800
                                                                                      ),
                                                                                    ),
                                                                                  )
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          margin: EdgeInsets.fromLTRB(50, 0, 0, 0),
                                                                          child: Row(
                                                                            children: [
                                                                              // tạo thanh ngang
                                                                              Container(
                                                                                width: 20,
                                                                                height: 1,
                                                                                margin: EdgeInsets.fromLTRB(0, 10, 6, 10),
                                                                                decoration: BoxDecoration(
                                                                                  border: Border.all(color: Colors.grey, style: BorderStyle.solid),
                                                                                ),
                                                                              ),
                                                                              Container(
                                                                                child: TextButton(
                                                                                  onPressed: (){

                                                                                  },
                                                                                  child: Text(
                                                                                    "Xem thêm ${e.commentCount} câu trả lời khác",
                                                                                    style: TextStyle(
                                                                                      fontSize: 12,
                                                                                      fontWeight: FontWeight.w800,
                                                                                      color: Colors.grey,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  );
                                                                }).toList(),
                                                              ),
                                                            ),
                                                            Container(
                                                              child: TextField(
                                                                keyboardType: TextInputType.text,
                                                                onChanged: (value) {

                                                                },
                                                                decoration: InputDecoration(
                                                                  hintText: 'Thêm bình luận',
                                                                  hintMaxLines: 4,
                                                                  hintTextDirection: TextDirection.ltr,
                                                                  border: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: BorderSide(color: Colors.grey),
                                                                  ),
                                                                  focusedBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: BorderSide(color: Colors.grey),
                                                                  ),
                                                                  icon: FloatingActionButton.small(
                                                                    onPressed: (){

                                                                    },
                                                                    child: Container(
                                                                      decoration: BoxDecoration(
                                                                        //border: Border.all(color: e.storyColor, width: 3),
                                                                        borderRadius: BorderRadius.circular(50),
                                                                        image: DecorationImage(
                                                                          image: NetworkImage('assest/cunyeu.jpg'),
                                                                          fit: BoxFit.cover,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }
                                            );
                                          },
                                          icon: Icon(FontAwesomeIcons.comment),
                                        ),
                                      ),
                                      Container(
                                        child: IconButton(
                                          onPressed: (){

                                          },
                                          icon: Icon(FontAwesomeIcons.locationArrow),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                  child: IconButton(
                                    onPressed: (){

                                    },
                                    icon: Icon(FontAwesomeIcons.bookmark),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                    "${e.likesCount} lượt thích",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Row(
                                          children: [
                                            Text(
                                              e.accountName,
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.fromLTRB(3, 2, 0, 0),
                                              child: Icon(e.iconReal, color: e.iconColor,size: 14),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          e.title,
                                          style: TextStyle(
                                            overflow: TextOverflow.clip,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 4, 0, 0),
                                        child: TextButton(
                                          onPressed: (){
                                            showModalBottomSheet(
                                                isScrollControlled: true,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                                ),
                                                context: context,
                                                builder: (BuildContext context){
                                                  return FractionallySizedBox(
                                                    heightFactor: 0.75,
                                                    child: Container(
                                                      margin: EdgeInsets.fromLTRB(10, 16, 10, 16),
                                                      decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(20)
                                                      ),
                                                      child: Container(
                                                        child: Column(
                                                          children: [
                                                            Container(
                                                              child: Row(
                                                                children: [
                                                                  Text("Bình luận",
                                                                    style: TextStyle(
                                                                      fontSize: 22,
                                                                      fontWeight: FontWeight.bold,
                                                                    ),)
                                                                ],
                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                              ),
                                                            ),
                                                            // tạo thanh ngang
                                                            Container(
                                                              height: 1,
                                                              margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                                              decoration: BoxDecoration(
                                                                border: Border.all(color: Colors.grey, style: BorderStyle.solid),
                                                              ),
                                                            ),
                                                            Container(
                                                              height: 400,
                                                              child: ListView(
                                                                scrollDirection: Axis.vertical,
                                                                children: lsAccountComment.map((e){
                                                                  return Container(
                                                                    child: Column(
                                                                      children: [
                                                                        Container(
                                                                          child: Row(
                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                            children: [
                                                                              Container(
                                                                                child: Row(
                                                                                  children: [
                                                                                    FloatingActionButton.small(
                                                                                      onPressed: (){

                                                                                      },
                                                                                      child: Container(
                                                                                        decoration: BoxDecoration(
                                                                                          //border: Border.all(color: e.storyColor, width: 3),
                                                                                          borderRadius: BorderRadius.circular(50),
                                                                                          image: DecorationImage(
                                                                                            image: NetworkImage(e.accountImg),
                                                                                            fit: BoxFit.cover,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Container(
                                                                                      margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
                                                                                      child: Row(
                                                                                        children: [
                                                                                          Text(
                                                                                            e.accountName,
                                                                                            style: TextStyle(
                                                                                              fontSize: 14,
                                                                                              fontWeight: FontWeight.bold,
                                                                                              color: Colors.black,
                                                                                            ),
                                                                                          ),
                                                                                          Container(
                                                                                            margin: EdgeInsets.fromLTRB(3, 2, 0, 0),
                                                                                            child: Icon(e.iconReal, color: e.iconColor,size: 14),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                              Container(
                                                                                margin: EdgeInsets.fromLTRB(5, 18, 0, 0),
                                                                                child: Text(
                                                                                  e.commentTime,
                                                                                  style: TextStyle(
                                                                                    fontSize: 13,
                                                                                    color: Colors.grey,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          child: Row(
                                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              Column(
                                                                                children: [
                                                                                  Container(
                                                                                    margin: EdgeInsets.fromLTRB(50, 0, 0, 0),
                                                                                    child: Row(
                                                                                      children: [
                                                                                        Container(
                                                                                          child: Row(
                                                                                            children: [
                                                                                              Container(
                                                                                                child: Text(
                                                                                                  e.acccountComments,
                                                                                                ),
                                                                                              )
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Column(
                                                                                children: [
                                                                                  Container(
                                                                                    child: IconButton(
                                                                                        onPressed: (){

                                                                                        },
                                                                                        icon: Icon(Icons.favorite_border, size: 14,)),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          margin: EdgeInsets.fromLTRB(50, 0, 0, 0),
                                                                          child: Row(
                                                                            children: [
                                                                              Container(
                                                                                child: Text(
                                                                                  "${e.likesCount} lượt thích",
                                                                                  style: TextStyle(
                                                                                      fontSize: 12,
                                                                                      color: Colors.grey,
                                                                                      fontWeight: FontWeight.w800
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Container(
                                                                                  child: TextButton(
                                                                                    onPressed: (){

                                                                                    },
                                                                                    child: Text(
                                                                                      "Trả lời",
                                                                                      style: TextStyle(
                                                                                          fontSize: 12,
                                                                                          color: Colors.grey,
                                                                                          fontWeight: FontWeight.w800
                                                                                      ),
                                                                                    ),
                                                                                  )
                                                                              ),
                                                                              Container(
                                                                                  child: TextButton(
                                                                                    onPressed: (){

                                                                                    },
                                                                                    child: Text(
                                                                                      "Xem bản dịch",
                                                                                      style: TextStyle(
                                                                                          fontSize: 12,
                                                                                          color: Colors.grey,
                                                                                          fontWeight: FontWeight.w800
                                                                                      ),
                                                                                    ),
                                                                                  )
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          margin: EdgeInsets.fromLTRB(50, 0, 0, 0),
                                                                          child: Row(
                                                                            children: [
                                                                              // tạo thanh ngang
                                                                              Container(
                                                                                width: 20,
                                                                                height: 1,
                                                                                margin: EdgeInsets.fromLTRB(0, 10, 6, 10),
                                                                                decoration: BoxDecoration(
                                                                                  border: Border.all(color: Colors.grey, style: BorderStyle.solid),
                                                                                ),
                                                                              ),
                                                                              Container(
                                                                                child: TextButton(
                                                                                  onPressed: (){

                                                                                  },
                                                                                  child: Text(
                                                                                    "Xem thêm ${e.commentCount} câu trả lời khác",
                                                                                    style: TextStyle(
                                                                                      fontSize: 12,
                                                                                      fontWeight: FontWeight.w800,
                                                                                      color: Colors.grey,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  );
                                                                }).toList(),
                                                              ),
                                                            ),
                                                            Container(
                                                              child: TextField(
                                                                keyboardType: TextInputType.text,
                                                                onChanged: (value) {

                                                                },
                                                                decoration: InputDecoration(
                                                                  hintText: 'Thêm bình luận',
                                                                  hintMaxLines: 4,
                                                                  hintTextDirection: TextDirection.ltr,
                                                                  border: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: BorderSide(color: Colors.grey),
                                                                  ),
                                                                  focusedBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: BorderSide(color: Colors.grey),
                                                                  ),
                                                                  icon: FloatingActionButton.small(
                                                                    onPressed: (){

                                                                    },
                                                                    child: Container(
                                                                      decoration: BoxDecoration(
                                                                        //border: Border.all(color: e.storyColor, width: 3),
                                                                        borderRadius: BorderRadius.circular(50),
                                                                        image: DecorationImage(
                                                                          image: NetworkImage('assest/cunyeu.jpg'),
                                                                          fit: BoxFit.cover,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }
                                            );
                                          },
                                          child: Text(
                                            "Xem tất cả ${e.commentCount} bình luận",
                                            style: TextStyle(
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
                                                    child: Row(
                                                      children: [
                                                        Text(
                                                          "leomessi",
                                                          style: TextStyle(
                                                            fontSize: 14,
                                                            fontWeight: FontWeight.bold,
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                        Container(
                                                          margin: EdgeInsets.fromLTRB(3, 2, 0, 0),
                                                          child: Icon(Icons.check_circle, color: Colors.blue,size: 14),
                                                        ),
                                                        Container(
                                                          margin: EdgeInsets.fromLTRB(4, 2, 0, 0),
                                                          child: Text(
                                                            "You are the GOAT",
                                                            style: TextStyle(
                                                              overflow: TextOverflow.clip,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),

                                                ],
                                              ),
                                              Column(
                                                children: [
                                                  IconButton(
                                                      onPressed: (){

                                                      },
                                                      icon: Icon(Icons.favorite_border, size: 14,)),
                                                ],
                                              )
                                            ],
                                          )
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
                            child: Row(
                              children: [
                                Text(
                                  e.postTime,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // tạo thanh ngang
                          Container(
                            height: 1,
                            margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey, style: BorderStyle.solid),
                            ),
                          ),
                        ],
                      )
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        currentIndex: 1,
        onTap: (index){

        },
        items: lsMenuItemBottom.map((e){
          return BottomNavigationBarItem(
            icon: Icon(
              e.iconData,
              color: e.color,
            ),
            label: "",
            backgroundColor: Colors.white,
          );
        }).toList(),
      ),
      );
  }


}

class MenuItemBottom{
  late IconData iconData; // late khai báo biến chưa được khởi tạo
  late Color color; // Color là thuộc tính không bắc buộc
  MenuItemBottom(
      {
        required this.iconData,
        this.color = Colors.black
      }
      );
}

class AccountFriendsStories{
  late String imageMain;
  late Color storyColor;
  late String accountName;
  AccountFriendsStories(
    {
      this.imageMain = 'assest/anhdaidien.jpg',
      required this.storyColor,
      required this.accountName,
    }
  );
}

class AccountNews{
  late String accountName;
  late String accountImage;
  late String post;
  late String likesCount;
  late String commentCount;
  late String postTime;
  late IconData iconReal;
  late Color iconColor;
  late String title;
  AccountNews(
    {
      required this.accountName,
      required this.accountImage,
      required this.post,
      required this.likesCount,
      required this.commentCount,
      required this.postTime,
      this.iconReal = Icons.check_circle,
      this.iconColor = Colors.white,
      required this.title,
     }
  );
}

class AccountComment{
  late String accountImg;
  late String accountName;
  late String acccountComments;
  late String likesCount;
  late String commentCount;
  late String commentTime;
  late IconData iconReal;
  late Color iconColor;
  AccountComment({
    required this.accountImg,
    required this.accountName,
    required this.acccountComments,
    required this.likesCount,
    required this.commentCount,
    required this.commentTime,
    this.iconReal = Icons.check_circle,
    this.iconColor = Colors.white,
  }
  );

}




