// cập nhật dữ liệu : stateful
// ko cần cập nhaatk: stateless
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
 class MyMathForm extends StatefulWidget {
    MyMathForm({super.key});

  @override
  State<MyMathForm> createState() => _MyMathFormState();
}

class _MyMathFormState extends State<MyMathForm> {
    double result = 0;
    GlobalKey<FormState> formkey = new GlobalKey<FormState>();

    TextEditingController txtFirstNumber = new TextEditingController();
    TextEditingController txtSecondNumber = new TextEditingController();
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.blueAccent,
         title: Text(
           "Math basic"
         ),
       ),
       body: Form(
         key: formkey, // formkey lưu các giá trị của validator
         child: ListView(
           scrollDirection: Axis.vertical,
           children: [
             Text(
               "Math basic operator",
               textAlign: TextAlign.center,
               style: TextStyle(
                 color: Colors.red,
                 fontSize: 28,
               ),
             ),
             TextFormField(
               decoration: InputDecoration(
                 hintText: "Input first value",
               ),
               controller: txtFirstNumber,
               validator: (value){
                 if(value == null || value.isEmpty){
                   return "Please input your data";
                 }
                 var data = double.tryParse(value);
                 if(data == null){
                   return "Please input correct format number";
                 }
                 return "";
               },
               inputFormatters: [
                 FilteringTextInputFormatter.allow(RegExp("[0-9]{*}{.}{0.1}[0-9]"))
               ],
             ),
             TextFormField(
               decoration: InputDecoration(
                 hintText: "Input second value",
               ),
               // controller dùng để điều khiển formField
               controller: txtSecondNumber,
               validator: (value){
                 if(value == null || value.isEmpty){
                   return "Please input your data";
                 }
                 var data = double.tryParse(value);
                 if(data == null){
                   return "Please input correct format number";
                 }
                 return "";
               },
             ),
             SizedBox(height: 10,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 ElevatedButton(
                     onPressed: (){
                       if(formkey.currentState?.validate() ?? false) {
                         // lấy giá trị ô thứ nhất
                         var first = txtFirstNumber.text;
                         // lấy giá trị ô thứ hai
                         var second = txtSecondNumber.text;
                         // Cộng kết quả 2 giá trị đó lại
                         var total = double.parse(first as String) +
                             double.parse(second as String);
                         // Hiển thị ra form
                         setState(() {
                           result = total;
                           print(result);
                         });
                       }
                     },
                     child: Text("Add")
                 ),
                 ElevatedButton(
                     onPressed: (){

                     },
                     child: Text("Subtract")
                 ),
                 ElevatedButton(
                     onPressed: (){

                     },
                     child: Text("Multiply")
                 ),
                 ElevatedButton(
                     onPressed: (){

                     },
                     child: Text("Divide")
                 ),
               ],
             ),
             SizedBox(height: 10,),
             Row(
               children: [
                 Text(
                   "Result: ${result}",
                   style: TextStyle(
                     color: Colors.red,
                     fontSize: 20,
                   ),
                 ),
               ],
             ),
           ],
         ),
       ),
     );
   }
}
