import 'package:flutter/material.dart';
class ModalBottom extends StatelessWidget {
  const ModalBottom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Your Task",
              ),
            ),
            SizedBox(height: 20,),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                  onPressed: (){

                  },
                  child: Text(
                      "add task"
                  )),
            )
          ],
        ),
      ),
    );
  }
}