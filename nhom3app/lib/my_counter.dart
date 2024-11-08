import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class MyCounter extends StatefulWidget {
  const MyCounter({super.key});

  @override
  State<MyCounter> createState() => _MyCounterState();
}

class _MyCounterState extends State<MyCounter> {

  int counter = 0;

  @override
  void initState(){
    super.initState();
    DocDuLieu();
  }

  void DocDuLieu() async{
    final prefs = await SharedPreferences.getInstance();
    // await prefs.setInt ('counter', counter);
    setState(() {
      counter = prefs.getInt("count") ?? 0;
    });
  }

  void IncrementCounter() async{
    final prefs = await SharedPreferences.getInstance();
    setState((){
      // counter++;
      counter = (prefs.getInt("count") ?? 0) + 1;
      prefs.setInt("count", counter);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Counter"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
                "Counter: $counter",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  // Vieets code tăng dữ liệu lên ở đây
                  IncrementCounter();
                  print(counter);
                },
                child: Text("Increment Counter")
            ),
          ],
        ),
      ),
    );
  }
}
