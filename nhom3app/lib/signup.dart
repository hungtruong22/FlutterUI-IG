import 'package:flutter/material.dart';
import 'dart:js_util';
import 'package:flutter/rendering.dart';
import 'package:flutter/foundation.dart';
class SignUpApp extends StatelessWidget {
  const SignUpApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("ĐĂNG KÝ",
                        style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        )
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assest/sapo.png'),
                            fit: BoxFit.cover,
                          )
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width/2,
                          height: 80,
                          child: TextFormField(
                            onChanged: (value){

                            },
                            // keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                                hintText: 'Email',
                                hintMaxLines: 1,
                                hintTextDirection: TextDirection.ltr,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.blue),
                                ),
                                labelText: "Email"
                            ),
                          ),
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                    Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width/2,
                          height: 80,
                          child: TextFormField(
                            obscureText: true,
                            onChanged: (value){

                            },
                            // keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              hintText: 'Tên đăng nhập',
                              hintMaxLines: 1,
                              hintTextDirection: TextDirection.ltr,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.blue),
                              ),
                              labelText: "Name",
                            ),
                          ),
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                    Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width/2,
                          height: 80,
                          child: TextFormField(
                            obscureText: true,
                            onChanged: (value){

                            },
                            // keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              hintText: 'Mật khẩu',
                              hintMaxLines: 1,
                              hintTextDirection: TextDirection.ltr,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.blue),
                              ),
                              labelText: "Password",
                            ),
                          ),
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                    Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width/2,
                          height: 80,
                          child: TextFormField(
                            obscureText: true,
                            onChanged: (value){

                            },
                            // keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              hintText: 'Nhập lại mật khẩu',
                              hintMaxLines: 1,
                              hintTextDirection: TextDirection.ltr,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.blue),
                              ),
                              labelText: "Re-Password",
                            ),
                          ),
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.green,
                          ),

                          child: TextButton(
                            onPressed: (){

                            },
                            child: Text(
                              "Đăng ký",
                              style: TextStyle(
                                color: Colors.black,

                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(4, 10, 0, 0),
                          child: InkWell(
                            onTap: (){
                              Navigator.pushNamed(context, "login");
                            },
                            child: Text(
                              "Quay lại đăng nhập",
                              style: TextStyle(
                                color: Colors.blue,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
