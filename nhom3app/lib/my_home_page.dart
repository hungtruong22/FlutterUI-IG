import 'package:flutter/material.dart';
import 'package:http/http.dart';

class MyHomePage extends StatelessWidget {
  // const MyHomePage({Key? key}) : super(key: key);
  MyHomePage({Key? key}) : super(key: key);
  // List<String> lsMenuBottom = ["Home", "Profile", "logout"];
  // List<IconData> lsItem = [];
  List<MenuItemBottom> lsMenuItemBottom = [
    MenuItemBottom(label: "Home", iconData: Icons.home),
    MenuItemBottom(label: "Profile", iconData: Icons.supervised_user_circle_sharp, color: Colors.red),
    MenuItemBottom(label: "Logout", iconData: Icons.logout, color: Colors.blue),
  ];
  List<String> lsTopic = [
    "Khoa học", "Đời sống", "Ẩm thực", "Kỹ thuật", "Du lịch",
    "Tin tức", "Ngoại giao" , "Kinh tế", "Quân đội", "Giao thông"
  ];

  String imageURL = 'https://img.meta.com.vn/Data/image/2021/09/21/hinh-anh-cho-con-3.jpg';
  String imagaURL2 = 'https://assets-global.website-files.com/604bd0b0571e783e6dedca7f/619bbcbab7877ecd614d69b3_Why%20do%20dogs%20eat%20grass_Hero.jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
          scrollDirection: Axis.vertical,
            children: [
              Text(
                "Hello world",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Xin chào mọi người",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                  fontFamily: 'Roboto',
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.green,
                        Colors.red,
                      ]
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround, // mainAxisAlignment: căn lề theo hướng chính(từ trái sang phải)
                  children: [
                    IconButton(
                      onPressed: (){
                        showToast(context, "Bạn đã nhấn nút Home");
                      },
                      icon: Icon(
                        Icons.home,
                        color: Colors.red,
                        size: 50,
                      ),
                    ),
                    IconButton(
                      onPressed: (){
                        showToast(context, "Bạn đã nhấn nút Box");
                      },
                      icon: Icon(
                        Icons.account_box,
                        color: Colors.green,
                        size: 50,
                      ),
                    ),
                    IconButton(
                      onPressed: (){
                        showToast(context, "Bạn đã nhấn nút Share");
                        // print("Bạn đã nhấn nút Home");
                        // var snackBar = new SnackBar(
                        //   content: Text(
                        //     "Bạn đã nhấn nút Home",
                        //     style: TextStyle(
                        //       color: Colors.green,
                        //       fontSize: 25,
                        //     ),
                        //   ),
                        // );

                        // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:
                        // Text(
                        //   "haha",
                        //   style: TextStyle(color: Colors.red,),
                        // ),
                        // ))
                      },
                      icon: Icon(
                        Icons.share,
                        color: Colors.deepPurple,
                        size: 50,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: lsTopic.map((e){
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.black87,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.all(20),
                      margin: EdgeInsets.all(10),
                      child: Text(
                        e,
                        style: TextStyle(
                          color: Colors.white,
                        ),),
                    );
                  }).toList(),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  image: DecorationImage(
                      image: NetworkImage('assest/cunyeu.jpg'),
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                margin: EdgeInsets.all(15),
                height: MediaQuery.of(context).size.height/3,
                child: Stack(
                  children: [
                    Positioned(
                        child: IconButton(
                          onPressed: (){

                          },
                          icon: Icon(
                            Icons.heart_broken,
                            color: Colors.red,
                            size: 30,
                          ),
                        ),
                      top: 10,
                      right: 20,
                    ),
                         Positioned(
                             child:Text(
                               "Hello",
                               style: TextStyle(
                                   fontSize: 30,
                                   color: Colors.red,
                                   shadows: [
                                     BoxShadow(
                                       color: Colors.grey,
                                       blurRadius: 5,
                                       offset: Offset(5, 5),
                                     ),
                                   ]
                               ),
                             ),
                           bottom: 0,
                           right: 20,
                         ),

                  ],
                ),
              ),
              Image(
                  image: NetworkImage(imageURL),
              ),
              Image(
                  image: NetworkImage(imagaURL2)),
              Image(
                  image: AssetImage('assest/cunyeu.jpg')
              ),
            ]
        ),
      ),//Center như 1 thẻ div chứa các thành phần bên trong nằm ở giữa
      appBar: AppBar(
        title: Text(
          "Trang chủ",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading : Icon(
          Icons.home,
          color: Colors.white,
          size: 30,
        ),
        actions: [
          IconButton(
            onPressed: (){

            },
            icon: Icon(
              Icons.search,
            ),
          ),

          IconButton(
            onPressed: (){

            },
            icon: Icon(
              Icons.add,
            ),
          ),
          PopupMenuButton(
              itemBuilder: (context){
                List<String> lsMenuItem = ["Thông tin cá nhân", "Đổi mật khẩu", "Đăng xuất"];
                var lsItem = lsMenuItem.map((e){
                  return PopupMenuItem(child: Text(e));
                }).toList();
                return lsItem;
              }
          ),
        ],
        backgroundColor: Colors.blue,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: lsMenuItemBottom.map((e){
          return BottomNavigationBarItem(
            icon: Icon(
              e.iconData,
              //color: e.color,
            ),
            label: e.label,
            backgroundColor: e.color,
          );
        }).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){

        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Colors.green,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  void showToast(BuildContext context, String data){
    var snackBar = new SnackBar(
      content: Text(
        data,
        style: TextStyle(
          color: Colors.red,
          fontSize: 25,
        ),
      ),
      //duration: Durations.short1,
      duration: Duration(milliseconds: 1000),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

}

class MenuItemBottom{
  late String label;
  late IconData iconData; // late khai báo biến chưa được khởi tạo
  late Color color; // Color là thuộc tính không bắc buộc
  MenuItemBottom(
      {required this.label,
        required this.iconData,
        this.color = Colors.black87});
}
