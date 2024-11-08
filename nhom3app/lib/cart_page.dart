import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  @override
  _CartList createState() => _CartList();
}

class _CartList extends State<CartPage> {
  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      // MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.blue;
    }
    return Colors.green;
  }
  @override
  bool valueCheck= false;
  bool isChecked = false;
  final allChecked = CheckBoxModal(title: "Tất cả");
  
  List<ItemCart> lsItemCart = [
    ItemCart(title: "Áo Polo", image: "assest/aobun.jpg", price: 200000, quantity: 1),
    ItemCart(title: "Áo Bomber", image: "assest/aokhoac.jpg", price: 320000, quantity: 1),
    ItemCart(title: "Dép ", image: "assest/dep.jpg", price: 100000, quantity: 1),
    ItemCart(title: "Giày Adidas Superstar", image: "assest/giaythethao.jpg", price: 500000, quantity: 1),
    ItemCart(title: "Quần Tây", image: "assest/quantay.jpg", price: 380000, quantity: 1),
    ItemCart(title: "Mũ Lưỡi Trai", image: "assest/muluoitrai.jpg", price: 90000, quantity: 1),
  ];
  // final bool valueClickCheck = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Container(
            //   child: InkWell(
            //     onTap: (){
            //       Navigator.pushNamed(context, "home");
            //     },
            //     child: Icon(Icons.arrow_back, color: Colors.white,)
            //   )
            // ),
            Container(
              child: Row(
                children: [
                  Text(
                    "Giỏ Hàng",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  Text(" (11)",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16
                  ),)
                ],
              ),
            ),
            Container(
              child: IconButton(
                onPressed: (){

                },
                icon: InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, "login");
                  },
                  child: Icon(Icons.logout),
                ),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.blue,

      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.fromLTRB(0, 0, 0, 110),
        children: lsItemCart.map((e) {
          return Container(
            margin: EdgeInsets.fromLTRB(0, 12, 0, 12),
            child: ListTile(
              leading: Checkbox(
                  checkColor: Colors.white,
                  value: e.value,
                  // fillColor: MaterialStateProperty.resolveWith(getColor),
                  onChanged: (value) => onItemChecked(e)
              ),
              title: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(e.image),
                        )
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(12, 0, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              child: Text(e.title,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold
                                  )),
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 12),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              child: Text("SL: "),
                            ),
                            Container(
                              width: 100,
                              height: 30,
                              child: TextField(
                                keyboardType: TextInputType.text,
                                onChanged: (value) {

                                },
                                decoration: InputDecoration(
                                  label: Text("Nhập SL",
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),),
                                  // hintText: 'Nhập số lượng',
                                  hintMaxLines: 1,
                                  hintTextDirection: TextDirection.ltr,
                                  border: OutlineInputBorder(
                                    // borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide(color: Colors.grey),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    // borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide(color: Colors.grey),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
                              child: Row(
                                children: [
                                  Container(
                                    child: TextButton(
                                      onPressed: (){

                                      },
                                      child: Text("OK",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    width: 50,
                                    height: 30,
                                    margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                                  ),
                                  Container(
                                    child: TextButton(
                                      onPressed: (){

                                      },
                                      child: Text("Xóa",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    width: 50,
                                    height: 30,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              child: Text("${e.price} đ",
                                style: TextStyle(color: Colors.blue),),
                              margin: EdgeInsets.fromLTRB(0, 12, 0, 0),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        }).toList(),
      ),
     bottomSheet: Container(
       margin: EdgeInsets.fromLTRB(0, 0, 0, 14),
       height: 100,
       width: MediaQuery.of(context).size.width,
       color: Colors.blue,
       child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           Container(
             child: Row(
               children: [
                 Checkbox(
                     checkColor: Colors.white,
                     value: allChecked.value,
                     fillColor: MaterialStateProperty.resolveWith(getColor),
                     onChanged: (value) => onAllChecked(allChecked)
                 ),
                 Container(
                   margin: EdgeInsets.fromLTRB(8, 0, 0, 0),
                   child: Text(allChecked.title,
                     style: TextStyle(
                         color: Colors.white
                     ),
                   ),
                 ),
               ],
             ),
           ),
           Container(
             child: Row(
               children: [
                 Container(
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text("Số lượng: 2",
                       style: TextStyle(
                         color: Colors.white
                       ),),
                       Container(
                         margin: EdgeInsets.fromLTRB(0, 8, 0, 0),
                         child: Row(
                           children: [
                             Text("Tổng thanh toán: ",
                             style: TextStyle(
                               color: Colors.white
                             ),),
                             Text("100000 đ",
                               style: TextStyle(
                                   color: Colors.orange
                               ),
                             ),
                           ],
                         ),
                       )
                     ],
                   ),
                 ),
                 Container(
                   width: 100,
                   height: 60,
                   color: Colors.green,
                   margin: EdgeInsets.fromLTRB(8, 0, 0, 0),
                   child: TextButton(
                     onPressed: (){

                     },
                     child: Text("Đặt hàng",
                     style: TextStyle(
                       color: Colors.white,
                     ),),
                   ),
                 )
               ],
             ),
           )
         ],
       ),
     ),
    );
  }

  onAllChecked(CheckBoxModal ckbItem){
    final newValue = !ckbItem.value;
    setState(() {
      ckbItem.value = newValue;

      lsItemCart.forEach((element) {
        element.value = newValue;
      });
    });
  }

  onItemChecked(ItemCart ckbItem){
    final newValue = !ckbItem.value;
    setState(() {
      ckbItem.value = newValue;

      if(!newValue){
        allChecked.value = false;
      }
      else{
        final allListChecked = lsItemCart.every((element) => element.value);
        allChecked.value = allListChecked;
      }
    });
  }
}

class CheckBoxModal{
  late String title;
  late bool value;
  CheckBoxModal(
      {
        required this.title,
        this.value = false,
      }
      );
}

class ItemCart{
  late String title;
  late bool value;
  late String image;
  late int price;
  late int quantity;
  ItemCart(
      {
        required this.title,
        this.value = false,
        required this.image,
        required this.price,
        required this.quantity,
      }
      );
}

int TongTien(int sl, int gia){
  return sl*gia;
}


