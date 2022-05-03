import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:tienda_grocery_web/model/related_product_model.dart';
import 'package:tienda_grocery_web/screen/about_us_page.dart';
import 'package:tienda_grocery_web/screen/bottom_page.dart';
import 'package:tienda_grocery_web/screen/category_page.dart';
import 'package:tienda_grocery_web/screen/contact_us_page.dart';
import 'package:tienda_grocery_web/screen/drawer_page.dart';
import 'package:tienda_grocery_web/screen/home_page.dart';
import 'package:tienda_grocery_web/screen/my_bag_page.dart';
import 'package:tienda_grocery_web/screen/product_data_page2.dart';
import 'package:tienda_grocery_web/screen/profile_page.dart';
import 'package:tienda_grocery_web/screen/responsive.dart';

class ProductDataPage extends StatefulWidget {
  const ProductDataPage({Key? key}) : super(key: key);

  @override
  State<ProductDataPage> createState() => _ProductDataPageState();
}

class _ProductDataPageState extends State<ProductDataPage> {
  List<RelatedProductModel> relatedList = [
    RelatedProductModel(
      images: "assets/images/onion.png",
      text1: "Onion",
      text2: "₹ 60/Kg",
      favorite: false,
    ),
    RelatedProductModel(
        images: "assets/images/onion.png",
        text1: "Onion",
        text2: "₹ 60/Kg",
        favorite: false),
    RelatedProductModel(
        images: "assets/images/onion.png",
        text1: "Onion",
        text2: "₹ 60/Kg",
        favorite: false),
    RelatedProductModel(
        images: "assets/images/onion.png",
        text1: "Onion",
        text2: "₹ 60/Kg",
        favorite: false),
    RelatedProductModel(
        images: "assets/images/onion.png",
        text1: "Onion",
        text2: "₹ 60/Kg",
        favorite: false),
  ];
  int count = 0;
  increament() {
    setState(() {
      count++;
    });
  }

  decrement() {
    setState(() {
      if (count > 0) {
        count--;
      }
    });
  }

  bool favorite = false;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 1000),
        child: Responsive.isSmallScreen(context)
            ? AppBar(
                title: Text("Title"),
              )
            : Container(
                color: Color(0xffFFFFFF),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                        },
                        child: Image(
                          image: AssetImage('assets/images/logo.png'),
                          height: 60,
                          width: 60,
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HomePage(),
                                  ),
                                );
                              },
                              child: Text(
                                'Grocery',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            SizedBox(width: screenSize.width / 20),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => CategoryPage(),
                                  ),
                                );
                              },
                              child: Text(
                                'Category',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            SizedBox(width: screenSize.width / 20),
                            // InkWell(
                            //   onTap: () {
                            //     Navigator.push(
                            //       context,
                            //       MaterialPageRoute(
                            //         builder: (context) => AboutsUsPage(),
                            //       ),
                            //     );
                            //   },
                            //   child: Text(
                            //     'Abouts',
                            //     style: TextStyle(color: Colors.black),
                            //   ),
                            // ),
                            // SizedBox(width: screenSize.width / 20),
                            // InkWell(
                            //   onTap: () {
                            //     Navigator.push(
                            //       context,
                            //       MaterialPageRoute(
                            //         builder: (context) => ContactUsPage(),
                            //       ),
                            //     );
                            //   },
                            //   child: Text(
                            //     'Contact Us',
                            //     style: TextStyle(color: Colors.black),
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                      InkWell(onTap: () {}, child: Icon(Icons.search)),
                      SizedBox(
                        width: screenSize.width / 50,
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyBagPage()),
                            );
                          },
                          child: Icon(Icons.shopping_cart)),
                      SizedBox(
                        width: screenSize.width / 50,
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProfilePage()),
                            );
                          },
                          child: Icon(Icons.person)),
                      SizedBox(
                        width: screenSize.width / 150,
                      ),
                    ],
                  ),
                ),
              ),
      ),
      drawer: Responsive.isSmallScreen(context) ? DrawerPage() : null,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                Container(
                  height: screenSize.height / 1.5,
                  width: screenSize.width / 2,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/banana.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.all(8),
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              if (favorite == true) {
                                favorite = false;
                              } else if (favorite == false) {
                                favorite = true;
                              }
                              //log(favorite.toString());
                            });
                          },
                          icon: favorite == true
                              ? Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                )
                              : favorite == false
                                  ? Icon(
                                      Icons.favorite_border_outlined,
                                    )
                                  : Icon(
                                      Icons.favorite_border_outlined,
                                    ),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Organic Banana",
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "12 pcs",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff6BAD42),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          "MRP:",
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          " ₹ 50",
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          " ₹ 60",
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          " 10% off",
                          style: TextStyle(
                              fontSize: 24,
                              color: Color(0xff6BAD42),
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 300,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Quantity",
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  decrement();
                                },
                                child: Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xffB1EAFD),
                                  ),
                                  child: Icon(
                                    Icons.remove,
                                    color: Color(0xff48B6DB),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Text(
                                count.toString(),
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 10),
                              InkWell(
                                onTap: () {
                                  increament();
                                },
                                child: Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xffB1EAFD),
                                  ),
                                  child: Icon(
                                    Icons.add,
                                    color: Color(0xff48B6DB),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xff38B6FF),
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            minimumSize: Size(200, 60),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MyBagPage(),
                              ),
                            );
                          },
                          child: Text(
                            'Buy Now',
                            style: TextStyle(
                              fontSize: 24,
                              color: Color(0xffFFFFFF),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xff38B6FF),
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            minimumSize: Size(200, 60),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProductDataPage2(),
                              ),
                            );
                          },
                          child: Text(
                            'Add to Cart',
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ]),
              SizedBox(
                height: 20,
              ),
              Text(
                "Discription",
                style: TextStyle(
                    fontSize: 35,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Related Product",
                style: TextStyle(
                    fontSize: 35,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 280,
                child: ListView.builder(
                    // shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: relatedList.length,
                    itemBuilder: (context, index) =>
                        relatedProductData(relatedList[index])),
              ),
              SizedBox(
                height: 20,
              ),
              BottomPage(),
            ],
          ),
        ),
      ),
    );
  }

  Widget relatedProductData(RelatedProductModel item) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDataPage(),
                ),
              );
            },
            child: Container(
              height: 260,
              width: 280,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  Container(
                    height: 200,
                    width: 280,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(
                            item.images,
                          ),
                          fit: BoxFit.cover,
                        )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            height: 40,
                            width: 60,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  10,
                                ),
                              ),
                            ),
                            child: Icon(Icons.shopping_cart_outlined,
                                color: Colors.white),
                          ),
                        ),
                        Container(
                          alignment: Alignment.topRight,
                          padding: EdgeInsets.all(8),
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                item.favorite = !item.favorite;
                                //log(item.favorite.toString());
                              });
                            },
                            icon: item.favorite == true
                                ? Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  )
                                : Icon(
                                    Icons.favorite_border_outlined,
                                  ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      item.text1,
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      item.text2,
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
