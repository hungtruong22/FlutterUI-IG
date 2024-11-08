import 'package:flutter/material.dart';
import 'dart:js_util';
import 'package:flutter/rendering.dart';
import 'package:flutter/foundation.dart';
class LoginApp extends StatelessWidget {
  const LoginApp({super.key});

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
                    Text("ĐĂNG NHẬP",
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
                                filled: true,
                                fillColor: Colors.yellowAccent,
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
                              hintText: 'Mật khẩu',
                              hintMaxLines: 1,
                              hintTextDirection: TextDirection.ltr,
                              filled: true,
                              fillColor: Colors.yellowAccent,
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
                            child: InkWell(
                              onTap: (){
                                Navigator.pushNamed(context, "home");
                              },
                              child:  Text(
                                "Đăng nhập",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
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
                          margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: Text(
                            "Nếu bạn chưa có tài khoản?"
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(4, 10, 0, 0),
                          child: InkWell(
                            onTap: (){
                              Navigator.pushNamed(context, "signup");
                            },
                            child: Text(
                              "Hãy đăng ký tại đây!",
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
