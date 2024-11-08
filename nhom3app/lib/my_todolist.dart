import 'package:flutter/material.dart';
import 'package:nhom3app/Widget/cardbody.dart';
import 'package:nhom3app/Widget/cardmodalbottom.dart';
class MyToDoList extends StatelessWidget {
  const MyToDoList({super.key});

  @override
  Widget build(BuildContext context) {
    print(context);
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
                "ToDoList",
              style: TextStyle(
                fontSize: 40,
              ),
            ),
          ],
        )
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            CardBody(),
            CardBody(),
            CardBody(),
            CardBody(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(
              context: context,
              backgroundColor: Colors.grey[200],
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              builder: (BuildContext context){
                return ModalBottom();
              }
          );
        },
        child: Icon(Icons.add, size: 40,),
        backgroundColor: Colors.blue,
      ),
    );
  }
}




