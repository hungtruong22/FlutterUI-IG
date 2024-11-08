import 'dart:js_util';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'model/product.dart';
import 'package:nhom3app/service.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';

class ProductList extends StatefulWidget {
  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  // static int page = 0;
  // int currentLength = 0;
  int increment = 5; // tăng số sp
  bool isLoading = false;
  List<Product> products = [];
  ApiService apiService = ApiService();
  // late ScrollController _Controller;
  final ScrollController _scrollController = ScrollController();
  int _currentMax = 5;
  @override
  // void initState() {
  //   // this._getMoreList();
  //     fetchProducts();
  //   _scrollController.addListener(() {
  //     if(_scrollController.position.pixels == _scrollController.position.maxScrollExtent){
  //       _getMoreList();
  //     }
  //   });
  //   super.initState();
  //   // _Controller = new ScrollController()..addListener(_scrollListener);
  // }


  // Future _loadMore() async {
  //   setState(() {
  //     isLoading = true;
  //   });
  //   List<Product> tlist = [];
  //   var i;
  //   // dummy delay
  //   await new Future.delayed(const Duration(seconds: 2));
  //   for (i = 0; i < products.length; i++) {
  //     print("index: ${i}");
  //
  //     if(tlist.length < products.length){
  //       tlist.add(products[i]);
  //     }
  //     // products.add(products[i]);
  //     print("listLength: ${tlist.length}");
  //     print("length: ${products.length}");
  //     print(tlist[i]);
  //   }
  //   setState(() {
  //     isLoading = false;
  //     currentLength = tlist.length;
  //   });
  // }

  // void _scrollListener() {
  //   print(_Controller.position.extentAfter);
  //   if (_Controller.position.extentAfter < 500) {
  //     setState(() {
  //       products.addAll(products);
  //     });
  //   }
  // }

  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
    fetchProducts();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
  // List<Product> tlist = [];
  // _getMoreList(){
  //
  //   print("Get More List");
  //   for(int i = _currentMax; i < _currentMax + increment; i++){
  //     // products.add(Product(id: 1, title: "2", price: 3, description: "4", category: "5", image: "assest/anh7.jpg"));
  //     // products.add(products[i+1]);
  //
  //     if(tlist.length < products.length){
  //       tlist.add(products[i]);
  //     }
  //     print("index: ${i}");
  //     print("lengList: ${tlist.length}");
  //     print("lengPRO: ${products.length}");
  //   }
  //     _currentMax = _currentMax + increment;
  //   setState(() {
  //
  //   });
  //   // if(!isLoading){
  //   //   setState(() {
  //   //     isLoading = true;
  //   //   });
  //   //   List<Product> tlist = [];
  //   //   for(int i = _currentMax; i < products.length; i++){
  //   //     tlist.add(products[i]);
  //   //     if(products[i] == products[products.length-1]){
  //   //       print("ngung");
  //   //       isLoading = false;
  //   //       // dispose();
  //   //       break;
  //   //     }
  //   //   }
  //   //   _currentMax += 4;
  //   //   setState(() {
  //   //     isLoading = false;
  //   //     products.addAll(tlist);
  //   //   });
  //   // }
  // }

  void _scrollListener() {
    if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent &&
        !isLoading && _currentMax < products.length) {
      setState(() {
        isLoading = true;
      });

      // Simulate loading data
      Future.delayed(Duration(seconds: 1), () {
        setState(() {
          // Kiểm tra xem có còn sản phẩm để tải không
          if (_currentMax + increment < products.length) {
            _currentMax += increment; // Tải thêm 5 sản phẩm khi cuộn đến cuối
          }
          else if(_currentMax + increment - products.length < increment){
            _currentMax +=  products.length - _currentMax;
          }
          else {
            _currentMax = products.length; // Không còn sản phẩm để tải
          }
            isLoading = false;
        });
      });
    }
  }


  Future<void> fetchProducts() async {
    final productList = await apiService.getProducts();
    setState(() {
      products = productList;
    });
  }

var iconColor = Colors.white;
  bool clicked = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text('Product List'),
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
          ),
          leading: InkWell(
            onTap: (){
              Navigator.pushNamed(context, "cart");
            },
            child: Icon(Icons.shopping_cart, color: Colors.white),

          ),
        ),
        body: GridView.builder(
          controller: _scrollController,
          // physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Số cột trong lưới
            crossAxisSpacing: 8, // Khoảng cách giữa các cột
            mainAxisSpacing: 8, // Khoảng cách giữa các hàng
          ),
          // itemCount: products.length + 1,
          itemCount: _currentMax,

          // itemBuilder: (context, index) {
          //   if(index == products.length){
          //     return CupertinoActivityIndicator();
          //   }
          //
          //   // return Card(
          //   //   child: Column(
          //   //     crossAxisAlignment: CrossAxisAlignment.center,
          //   //     children: [
          //   //       Image.network(product.image, fit: BoxFit.cover, width: 200 , height: 124),
          //   //       Padding(
          //   //         padding: EdgeInsets.all(8.0),
          //   //         child: Column(
          //   //           crossAxisAlignment: CrossAxisAlignment.start,
          //   //           children: [
          //   //             Text(product.title, style: TextStyle(fontWeight: FontWeight.bold)),
          //   //             Text('Price: \$${product.price.toStringAsFixed(2)}'),
          //   //             Text('Description: ${product.description}'),
          //   //             Text('Category: ${product.category}'),
          //   //           ],
          //   //         ),
          //   //       ),
          //   //     ],
          //   //   ),
          //   // );
          //
          //   else{
          //     // final product = products[index];
          //     var product = products[index];
          //     return Container(
          //       width: MediaQuery.of(context).size.width,
          //       height: MediaQuery.of(context).size.height,
          //       margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
          //       child: Column(
          //         children: [
          //           Container(
          //             margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
          //             child: CachedNetworkImage(
          //               height: 100,
          //               width: 100,
          //               imageUrl: product.image,
          //               imageBuilder: (context, ImageProvider){
          //                 return Container(
          //                   decoration: BoxDecoration(
          //                     image: DecorationImage(
          //                       image: ImageProvider,
          //                       fit: BoxFit.cover,
          //                     ),
          //                   ),
          //                 );
          //               },
          //               placeholder: (context, url){
          //                 return Container(
          //                   child: Center(
          //                     child: CircularProgressIndicator(),
          //                   ),
          //                 );
          //               },
          //               errorWidget: (context, url, error) => Image.asset("assest/ribi.jpg"),
          //             ),
          //           ),
          //           Container(
          //             margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
          //             child: Column(
          //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //               crossAxisAlignment: CrossAxisAlignment.start,
          //               children: [
          //                 Text("Title: ${product.title}",
          //                     style: TextStyle(overflow: TextOverflow.ellipsis)),
          //                 Text("Price: ${product.price}"),
          //                 Text("Description: ${product.description}",
          //                     style: TextStyle(overflow: TextOverflow.ellipsis)),
          //                 Text("Category: ${product.category}",
          //                     style: TextStyle(overflow: TextOverflow.ellipsis)),
          //               ],
          //             ),
          //           ),
          //         ],
          //       ),
          //       color: Colors.blue,
          //     );
          //   }
          // },

          itemBuilder: (context, index) {
            if(index < products.length){
              var product = products[index];
              return Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 20, 0, 18),
                      child: CachedNetworkImage(
                        height: 60,
                        width: 100,
                        imageUrl: product.image,
                        imageBuilder: (context, ImageProvider){
                          return Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: ImageProvider,
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        },
                        placeholder: (context, url){
                          return Container(
                            child: Center(
                              child: CircularProgressIndicator(),
                            ),
                          );
                        },
                        errorWidget: (context, url, error) => Image.asset("assest/ribi.jpg"),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Title: ${product.title}",
                              style: TextStyle(overflow: TextOverflow.ellipsis)),
                          Text("Price: ${product.price}"),
                          Text("Description: ${product.description}",
                              style: TextStyle(overflow: TextOverflow.ellipsis)),
                          Text("Category: ${product.category}",
                              style: TextStyle(overflow: TextOverflow.ellipsis)),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                child: Text(
                                  "Đánh giá sản phẩm",
                                ),
                              ),
                            ],
                          ),
                          Container(
                            child: RatingBar.builder(
                              minRating: 1,
                              itemSize: 14,
                              itemBuilder: (context,_) => Icon(Icons.star,color: Colors.yellow,),
                              onRatingUpdate: (rating){},
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 3, 0, 0),
                            height: 40,
                            width: 100,
                            color: Colors.orange,
                            child: TextButton(
                              child: InkWell(
                                onTap: (){
                                  Navigator.pushNamed(context, "cart");
                                },
                                child:  Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: Icon(Icons.shopping_cart, color: Colors.white, size: 18),
                                    ),
                                    Container(
                                      child: Text("Mua hàng",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                      ),),
                                    )
                                  ],
                                ),
                              ),
                              onPressed: (){

                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                color: Colors.blue,
              );
            }
            else{
              return CupertinoActivityIndicator();
            }
          },
          scrollDirection: Axis.vertical,
        ),


    );
  }
}