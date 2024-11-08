import 'package:flutter/material.dart';
// import 'package:nhom3app/my_home_page.dart';
// import 'package:nhom3app/my_ig_page.dart';
 // import 'package:nhom3app/my_class_page.dart';
// import 'package:nhom3app/my_photo.dart';
// import 'package:nhom3app/my_product.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';
import 'package:nhom3app/login.dart';
import 'package:nhom3app/my_class_page.dart';
import 'package:nhom3app/my_counter.dart';
import 'package:nhom3app/my_home_page.dart';
import 'package:nhom3app/my_ig_page.dart';
import 'package:nhom3app/my_product.dart';
import 'package:nhom3app/my_todolist.dart';
import 'package:nhom3app/myform.dart';
import 'package:nhom3app/signup.dart';
import 'package:nhom3app/cart_page.dart';

void main(){
  // var myApp = new MyApp();
  // runApp(myApp);

  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {// hàm này có tác dụng ta ra dao diện
    return MaterialApp(
      title: "App nhóm 3",
      home: CartPage(),
      debugShowCheckedModeBanner: false,
    //   theme: ThemeData(
    //   fontFamily: 'RobotoIta',
    // ),
    //   routes: {
    //     "login" : (context) => LoginApp(),
    //     "signup" : (context) => SignUpApp(),
    //     "home" : (context) => ProductList(),
    //     "cart" : (context) => CartPage(),
    //   },
    );
  }
}