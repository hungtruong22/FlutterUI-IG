import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class MyClassPage extends StatelessWidget {
  // const MyHomePage({Key? key}) : super(key: key);
  MyClassPage({Key? key}) : super(key: key);
  List<ListClassItem> lsClassItem = [
    ListClassItem(className: "Quản trị dự án phần mềm", teacherName: "Hân Nguyễn Mậu", image: 'assest/cl1.jpg',),
    ListClassItem(className: "Lập trình ứng dụng di động", teacherName: "Nguyễn Dũng", image: 'assest/cl2.jpg',),
    ListClassItem(className: "Lập trình hướng đối tượng", teacherName: "Trương Công Tuấn", image: 'assest/cl3.jpg',),
    ListClassItem(className: "Ngôn ngữ truy vấn có cấu trúc", teacherName: "Phương Chi Trần" , image: 'assest/cl4.jpg',),
    ListClassItem(className: "Java nâng cao", teacherName: "Hà Nguyễn Hoàng", image: 'assest/cl2.jpg',),
    ListClassItem(className: "Mẫu thiết kế", teacherName: "Trung Nguyễn Văn", image: 'assest/cl1.jpg',),
    ListClassItem(className: "Cấu trúc dữ liệu và giải thuật", teacherName: "Quang Hoàng", image: 'assest/cl4.jpg',),
    ListClassItem(className: "Mạng máy tính", teacherName: "Nguyễn Ngọc Thủy", image: 'assest/cl3.jpg',),
  ];

  List<ListMenuClassItem> lsMenuClass = [
    ListMenuClassItem(icon: "H", className: "Quản trị dự án phần mềm", teacherName: "Hân Nguyễn Mậu", color: Colors.blue),
    ListMenuClassItem(icon: "D", className: "Lập trình ứng dụng di động", teacherName: "Nguyễn Dũng", color: Colors.green),
    ListMenuClassItem(icon: "T", className: "Lập trình hướng đối tượng", teacherName: "Trương Công Tuấn", color: Colors.orange),
    ListMenuClassItem(icon: "C", className: "Ngôn ngữ truy vấn có cấu trúc", teacherName: "Phương Chi Trần", color: Colors.pink),
    ListMenuClassItem(icon: "H", className: "Java nâng cao", teacherName: "Hà Nguyễn Hoàng", color: Colors.purple),
    ListMenuClassItem(icon: "T", className: "Mẫu thiết kế", teacherName: "Trung Nguyễn Văn", color: Colors.grey),
    ListMenuClassItem(icon: "Q", className: "Cấu trúc dữ liệu và giải thuật từ cơ bản đến nâng cao", teacherName: "Quang Hoàng", color: Colors.brown),
    ListMenuClassItem(icon: "T", className: "Mạng máy tính", teacherName: "Nguyễn Ngọc Thủy", color: Colors.red),
  ];

  List<ListAccountItem> lsAccount = [
    ListAccountItem(icon: "T", name: "Nguyễn Minh Triết", email: "nguyenminhtriet2006@gmail.com", color: Colors.blue),
    ListAccountItem(icon: "H", name: "Trần Ngọc Hoàng", email: "hoangtranngoc1204@gmail.com", color: Colors.green),
    ListAccountItem(icon: "N", name: "Nguyễn Văn Nam", email: "namnguyenvan1501@gmail.com", color: Colors.deepOrange),
    ListAccountItem(icon: "L", name: "Nguyễn Hương Ly", email: "huonglynguyen1102@gmail.com", color: Colors.pinkAccent),
  ];


  @override
  Widget build(BuildContext context) {
    // precacheImage(NetworkImage("https://img.freepik.com/free-vector/student-classroom-template_1308-26333.jpg") , context);
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              "Google ",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Classroom",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),

        actions: [
          Container(
            margin: EdgeInsets.all(25),
            child: FloatingActionButton(
              child: Text(
                'H',
                style: TextStyle(
                    fontSize: 12.0),
              ),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context){
                      return Container(
                        // padding: EdgeInsets.all(20),
                        margin: EdgeInsets.fromLTRB(20, 90, 20, 100),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(20),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          Icon(Icons.close),
                                        ],
                                      ),
                                      Container(
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  "G",
                                                  style: TextStyle(
                                                    color: Colors.blue,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20,
                                                    decoration: TextDecoration.none,
                                                  ),
                                                ),
                                                Text(
                                                  "o",
                                                  style: TextStyle(
                                                    color: Colors.red,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20,
                                                    decoration: TextDecoration.none,
                                                  ),
                                                ),
                                                Text(
                                                  "o",
                                                  style: TextStyle(
                                                    color: Colors.yellow,
                                                    fontWeight: FontWeight.bold,
                                                    decoration: TextDecoration.none,
                                                    fontSize: 20,
                                                  ),
                                                ),
                                                Text(
                                                  "g",
                                                  style: TextStyle(
                                                    color: Colors.blue,
                                                    fontWeight: FontWeight.bold,
                                                    decoration: TextDecoration.none,
                                                    fontSize: 20,
                                                  ),
                                                ),
                                                Text(
                                                  "l",
                                                  style: TextStyle(
                                                    color: Colors.green,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20,
                                                    decoration: TextDecoration.none,
                                                  ),
                                                ),
                                                Text(
                                                  "e",
                                                  style: TextStyle(
                                                    color: Colors.red,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20,
                                                    decoration: TextDecoration.none,
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      Column(),
                                    ],
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                                    child: Row(
                                      children: [
                                        FloatingActionButton.small(
                                          onPressed: (){

                                          },
                                          child: Text(
                                            "H",
                                            style: TextStyle(fontSize: 12.0,),
                                          ),
                                          backgroundColor: Colors.purple,
                                        ),
                                        Container(
                                          margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Hùng Trương Minh",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.black,
                                                  decoration: TextDecoration.none,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              Text(
                                                "20t1020390@husc.edu.vn",
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.grey,
                                                  decoration: TextDecoration.none,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                                    child: Text(
                                      "Quản lý tài khoản Google của bạn",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                        decoration: TextDecoration.none,
                                        fontWeight: FontWeight.w100,
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white,
                                      border: Border.all(
                                        color: Colors.grey,
                                        style: BorderStyle.solid,
                                        width: 1,
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 0.1,
                                          blurRadius: 1,
                                          offset: Offset(0, 0.1),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // Tạo thanh ngang
                            Container(
                              height: 1,
                              padding: EdgeInsets.all(0),
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey, style: BorderStyle.solid),
                              ),
                            ),
                            // Container(
                            //   padding: EdgeInsets.fromLTRB(20, 10, 0, 20),
                            //   child: Column(
                            //     children: [
                            //       Container(
                            //         margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
                            //         child: Row(
                            //           children: [
                            //             FloatingActionButton.small(
                            //               onPressed: (){
                            //
                            //               },
                            //               child: Text(
                            //                 "T",
                            //                 style: TextStyle(fontSize: 12.0,),
                            //               ),
                            //               backgroundColor: Colors.greenAccent,
                            //             ),
                            //             Container(
                            //               margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                            //               child: Column(
                            //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //                 crossAxisAlignment: CrossAxisAlignment.start,
                            //                 children: [
                            //                   Text(
                            //                     "Nguyễn Minh Triết",
                            //                     style: TextStyle(
                            //                       fontSize: 14,
                            //                       color: Colors.black,
                            //                       decoration: TextDecoration.none,
                            //                       fontWeight: FontWeight.w500,
                            //                     ),
                            //                   ),
                            //                   Text(
                            //                     "nguyenminhtriet2006@gmail.com",
                            //                     style: TextStyle(
                            //                       fontSize: 12,
                            //                       color: Colors.grey,
                            //                       decoration: TextDecoration.none,
                            //                       fontWeight: FontWeight.w500,
                            //                     ),
                            //                   ),
                            //                 ],
                            //               ),
                            //             ),
                            //           ],
                            //         ),
                            //       ),
                            //       Container(
                            //         margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
                            //         child: Row(
                            //           children: [
                            //             FloatingActionButton.small(
                            //               onPressed: (){
                            //
                            //               },
                            //               child: Text(
                            //                 "N",
                            //                 style: TextStyle(fontSize: 12.0,),
                            //               ),
                            //             ),
                            //             Container(
                            //               margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                            //               child: Column(
                            //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //                 crossAxisAlignment: CrossAxisAlignment.start,
                            //                 children: [
                            //                   Text(
                            //                     "Nguyễn Văn Nam",
                            //                     style: TextStyle(
                            //                       fontSize: 14,
                            //                       color: Colors.black,
                            //                       decoration: TextDecoration.none,
                            //                       fontWeight: FontWeight.w500,
                            //                     ),
                            //                   ),
                            //                   Text(
                            //                     "namnguyenvan1501@gmail.com",
                            //                     style: TextStyle(
                            //                       fontSize: 12,
                            //                       color: Colors.grey,
                            //                       decoration: TextDecoration.none,
                            //                       fontWeight: FontWeight.w500,
                            //                     ),
                            //                   ),
                            //                 ],
                            //               ),
                            //             ),
                            //           ],
                            //         ),
                            //       ),
                            //       Container(
                            //         margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
                            //         child: Row(
                            //           children: [
                            //             FloatingActionButton.small(
                            //               onPressed: (){
                            //
                            //               },
                            //               child: Text(
                            //                 "L",
                            //                 style: TextStyle(fontSize: 12.0,),
                            //               ),
                            //             ),
                            //             Container(
                            //               margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                            //               child: Column(
                            //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //                 crossAxisAlignment: CrossAxisAlignment.start,
                            //                 children: [
                            //                   Text(
                            //                     "Nguyễn Hương Ly",
                            //                     style: TextStyle(
                            //                       fontSize: 14,
                            //                       color: Colors.black,
                            //                       decoration: TextDecoration.none,
                            //                       fontWeight: FontWeight.w500,
                            //                     ),
                            //                   ),
                            //                   Text(
                            //                     "huonglynguyen1102@gmail.com",
                            //                     style: TextStyle(
                            //                       fontSize: 12,
                            //                       color: Colors.grey,
                            //                       decoration: TextDecoration.none,
                            //                       fontWeight: FontWeight.w500,
                            //                     ),
                            //                   ),
                            //                 ],
                            //               ),
                            //             ),
                            //           ],
                            //         ),
                            //       ),
                            //       Container(
                            //         child: Row(
                            //           children: [
                            //             Icon(Icons.account_circle_rounded, size: 30,),
                            //             Container(
                            //               margin: EdgeInsets.fromLTRB(20, 8, 0, 15),
                            //               child: Text(
                            //                 "Thêm tài khoản khác",
                            //                 style: TextStyle(
                            //                     fontSize: 14,
                            //                     color: Colors.black,
                            //                   fontWeight: FontWeight.w500,
                            //                   decoration: TextDecoration.none,
                            //                 ),
                            //               ),
                            //             )
                            //           ],
                            //           crossAxisAlignment: CrossAxisAlignment.start,
                            //         ),
                            //       ),
                            //       Container(
                            //         child: Row(
                            //           children: [
                            //             Icon(Icons.manage_accounts_outlined, size: 30),
                            //             Container(
                            //               margin: EdgeInsets.fromLTRB(20, 8, 0, 0),
                            //               child: Text(
                            //                 "Quản lý tài khoản",
                            //                 style: TextStyle(
                            //                     fontSize: 14,
                            //                     color: Colors.black,
                            //                     fontWeight: FontWeight.w500,
                            //                     decoration: TextDecoration.none,
                            //                 ),
                            //               ),
                            //             )
                            //           ],
                            //           crossAxisAlignment: CrossAxisAlignment.start,
                            //         ),
                            //       ),
                            //     ],
                            //   ),
                            // ),
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    height: 220,
                                    padding: EdgeInsets.fromLTRB(20, 10, 0, 20),
                                    child: ListView(
                                      scrollDirection: Axis.vertical,
                                      children: lsAccount.map((e){
                                        return  Container(
                                          margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
                                          child: Row(
                                            children: [
                                              FloatingActionButton.small(
                                                onPressed: (){

                                                },
                                                child: Text(
                                                  e.icon,
                                                  style: TextStyle(fontSize: 12.0,),
                                                ),
                                                backgroundColor: e.color,
                                              ),
                                              Container(
                                                margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      e.name,
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        color: Colors.black,
                                                        decoration: TextDecoration.none,
                                                        fontWeight: FontWeight.w500,
                                                      ),
                                                    ),
                                                    Text(
                                                      e.email,
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.grey,
                                                        decoration: TextDecoration.none,
                                                        fontWeight: FontWeight.w500,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      }).toList()
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(20, 0, 0, 10),
                                    child: Row(
                                      children: [
                                        Icon(Icons.account_circle_rounded, size: 30,),
                                        Container(
                                          margin: EdgeInsets.fromLTRB(20, 8, 0, 15),
                                          child: Text(
                                            "Thêm tài khoản khác",
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        )
                                      ],
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                                    child: Row(
                                      children: [
                                        Icon(Icons.manage_accounts_outlined, size: 30),
                                        Container(
                                          margin: EdgeInsets.fromLTRB(10, 8, 0, 0),
                                          child: Text(
                                            "Quản lý tài khoản",
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        )
                                      ],
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                    ),
                                  ),
                                ],
                              ),

                            ),
                            // tạo thanh ngang
                            Container(
                              height: 1,
                              padding: EdgeInsets.all(0),
                              margin: EdgeInsets.fromLTRB(0, 10, 0, 14),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey, style: BorderStyle.solid),
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Text(
                                    "Chính sách quyền riêng tư",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                  Text(
                                      "Điều khoản dịch vụ",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                ],
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                              ),
                            ),

                          ],
                        ),
                      );
                    });
              },
              backgroundColor: Colors.purple,
            ),
          ),
          PopupMenuButton(
              icon: const Icon(Icons.more_horiz),
              itemBuilder: (context) => [
                PopupMenuItem(child: Row(
                  children: [
                    Text(
                      "Gửi ý kiến phản cho Google",
                      style: TextStyle(
                        color: Colors.grey,
                      ),)
                  ],
                ))
              ]
          ),
        ],
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        toolbarHeight: 80,
        backgroundColor: Colors.white,
      ),
      drawer: new Drawer(
          child: SingleChildScrollView(
            child: Column(
              children: [
                // title
                Container(
                  padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
                  margin: EdgeInsets.fromLTRB(20, 30, 0, 10),
                  child: Row(
                    children: [
                      Text(
                        "G",
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "o",
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "o",
                        style: TextStyle(
                          color: Colors.yellow,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "g",
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "l",
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "e",
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        " Classroom",
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w300,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                // Tạo thanh ngang
                Container( // tạo thanh ngang
                  height: 1,
                  margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, style: BorderStyle.solid),
                  ),
                ),
                ListTile(
                  onTap: (){

                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(50), bottomRight: Radius.circular(50)),
                  ),
                  tileColor:  Color(0xFFe3eefc),
                  leading: const Icon(
                    Icons.home_outlined,
                    color: Color.fromRGBO(66, 133, 244, 1),
                  ),
                  title: const Text(
                    "Lớp học",
                    style: TextStyle(
                      color: Color.fromRGBO(66, 133, 244, 1),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                ListTile(
                  onTap: (){

                  },
                  leading: const Icon(Icons.calendar_today),
                  title: const Text(
                    "Lịch",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                //Tạo thanh ngang
                Container( // tạo thanh ngang
                  height: 1,
                  margin: EdgeInsets.fromLTRB(70, 20, 0, 20),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, style: BorderStyle.solid),
                  ),
                ),
                ListTile(
                  onTap: (){

                  },
                  title: const Text(
                    "ĐÃ ĐĂNG KÝ",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w300,
                        fontSize: 12
                    ),
                  ),
                ),
                ListTile(
                  onTap: (){

                  },
                  leading: const Icon(Icons.fact_check_outlined),
                  title: const Text(
                    "Việc cần làm",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Container(
                    child: Column(
                      children: lsMenuClass.map((e){
                        return  ListTile(
                            onTap: (){

                            },
                            leading: FloatingActionButton.small(
                              child: Text(
                                e.icon,
                                style: TextStyle(fontSize: 12.0),
                              ),
                              onPressed: () {},
                              backgroundColor: e.color,
                            ),
                            title: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    e.className,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Text(
                                    e.teacherName,
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            )
                        );
                      }).toList(),
                    )
                ),
                //Tạo thanh ngang
                Container( // tạo thanh ngang
                  height: 1,
                  margin: EdgeInsets.fromLTRB(70, 20, 0, 20),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, style: BorderStyle.solid),
                  ),
                ),
                ListTile(
                  onTap: (){

                  },
                  leading: const Icon(
                    Icons.arrow_circle_down_outlined,
                  ),
                  title: const Text(
                    "Lớp học đã lưu trữ",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                ListTile(
                  onTap: (){

                  },
                  leading: const Icon(
                    Icons.folder_open_outlined,
                  ),
                  title: const Text(
                    "Thư mục của lớp học",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                ListTile(
                  onTap: (){

                  },
                  leading: const Icon(
                    Icons.settings_outlined,
                  ),
                  title: const Text(
                    "Cài đặt",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                ListTile(
                  onTap: (){

                  },
                  leading: const Icon(
                    Icons.help_outline_outlined,
                  ),
                  title: const Text(
                    "Trợ giúp",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          )
      ),

      body: Center(
        child: Column(
          children: [
            Container(
              height: 620,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: lsClassItem.map((e){
                  return Container(
                      height: 160,
                      // width: double.infinity,
                      // color: Colors.blue[900],
                      margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                      padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                      decoration: BoxDecoration(
                        image: new DecorationImage(
                          image: new ExactAssetImage(e.image),
                          fit: BoxFit.cover,),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                e.className,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              PopupMenuButton(
                                  color: Colors.white,
                                  icon: const Icon(Icons.more_horiz),
                                  itemBuilder: (context) => [
                                    PopupMenuItem(child: Row(
                                      children: [
                                        Text(
                                          "Hủy đăng ký",
                                          style: TextStyle(
                                            color: Colors.black,
                                          ),)
                                      ],
                                    ))
                                  ]
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                e.teacherName,
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
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

      floatingActionButton: Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 16, 90),
        child: FloatingActionButton(
          backgroundColor: Colors.white,
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return Container(
                  padding: EdgeInsets.fromLTRB(20, 10, 0, 20),
                  child: Wrap(
                    children: <Widget>[
                      ListTile(
                        title: Text(
                          'Tham Gia Lớp Học',
                        ),
                        onTap: (){},
                      ),
                      ListTile(
                        title: Text(
                          'Tạo Lớp Học',
                        ),
                        onTap: (){},
                      ),
                    ],
                  ),
                );
              },
            );
          },
          child: Icon(
              Icons.add,
              color: Colors.blue,
          ),
        ),
      )
    );
  }


}

class ListClassItem{
  late String className;
  late String teacherName; // late khai báo biến chưa được khởi tạo
  late String image;
  ListClassItem(
      {required this.className,
        required this.teacherName,
        required this.image,});
}

class ListMenuClassItem{
  late String icon;
  late String className;
  late String teacherName;
  late Color color;
  ListMenuClassItem(
      {
        required this.icon,
        required this.className,
        required this.teacherName,
        this.color = Colors.blue
      }
      );
}

class ListAccountItem{
  late String icon;
  late String name; // late khai báo biến chưa được khởi tạo
  late String email;
  late Color color;
  ListAccountItem(
      {required this.icon,
        required this.name,
        required this.email,
        this.color = Colors.blue,
      });
}
