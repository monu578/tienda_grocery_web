import 'package:flutter/material.dart';
import 'package:tienda_grocery_web/screen/about_us_page.dart';
import 'package:tienda_grocery_web/screen/bottom_page.dart';
import 'package:tienda_grocery_web/screen/category_page.dart';
import 'package:tienda_grocery_web/screen/contact_us_page.dart';
import 'package:tienda_grocery_web/screen/drawer_page.dart';
import 'package:tienda_grocery_web/screen/home_page.dart';
import 'package:tienda_grocery_web/screen/profile_page.dart';
import 'package:tienda_grocery_web/screen/responsive.dart';
import 'package:tienda_grocery_web/screen/thank_page.dart';

class MyBagPage extends StatefulWidget {
  const MyBagPage({Key? key}) : super(key: key);

  @override
  State<MyBagPage> createState() => _MyBagPageState();
}

class _MyBagPageState extends State<MyBagPage> {
  int count = 0;
  increament() {
    setState(() {
      count++;
    });
  }

  decreament() {
    setState(() {
      if (count > 0) {
        count--;
      }
    });
  }

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
                      InkWell(onTap: () {}, child: Icon(Icons.shopping_cart)),
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
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "My Bag (3 Items)",
                style: TextStyle(
                  color: Color(0xff38B6FF),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Divider(
                thickness: 3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        Container(
                          height: 100,
                          width: 600,
                          decoration: BoxDecoration(
                            color: Color(0xffEBF7FF),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image:
                                          AssetImage("assets/images/img-f.png"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 500,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Apple",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Icon(Icons.delete),
                                      ],
                                    ),
                                    Text(
                                      "1 Kg",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    Container(
                                      width: 500,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              InkWell(
                                                onTap: () {
                                                  decreament();
                                                },
                                                child: Container(
                                                  height: 30,
                                                  width: 30,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
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
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.bold),
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
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    color: Color(0xffB1EAFD),
                                                  ),
                                                  child: Icon(
                                                    Icons.add,
                                                    color: Color(0xff48B6DB),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            "₹ 100",
                                            style: TextStyle(
                                                color: Color(0xff38B6FF)),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 150,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Card(
                          child: Container(
                            height: 300,
                            width: 500,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Order Summery",
                                    style: TextStyle(
                                      color: Color(0xff38B6FF),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Divider(
                                  thickness: 3,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Sub Total",
                                        style: TextStyle(
                                            color: Color(0xff000000),
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "₹ 420",
                                        style: TextStyle(
                                            color: Color(0xff000000),
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Discount On Order",
                                        style: TextStyle(
                                            color: Color(0xff000000),
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "₹ 5",
                                        style: TextStyle(
                                            color: Color(0xff000000),
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Delivery Fee",
                                        style: TextStyle(
                                            color: Color(0xff000000),
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Free",
                                        style: TextStyle(
                                            color: Color(0xff049B1D),
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Average delivery time:",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    Text(
                                      "2-24 hours",
                                      style: TextStyle(
                                          color: Color(0xff5A1B51),
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                Divider(
                                  thickness: 3,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: Color(0xff09A4FF),
                                        elevation: 3,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        minimumSize: Size(300, 50),
                                      ),
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => ThankPage(),
                                          ),
                                        );
                                      },
                                      child: Text(
                                        'Grand Total = ₹ 425',
                                        style: TextStyle(
                                          fontSize: 24,
                                          color: Color(0xffFFFFFF),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xff09A4FF),
                                elevation: 3,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                minimumSize: Size(350, 50),
                              ),
                              onPressed: () {},
                              child: Text(
                                'Checkout',
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Color(0xffFFFFFF),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                side: BorderSide(
                                  width: 1,
                                  color: Color(0xff38B6FF),
                                ),
                                elevation: 3,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                minimumSize: Size(350, 50),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HomePage(),
                                  ),
                                );
                              },
                              child: Text(
                                'Continue Shopping',
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Color(0xff38B6FF),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              BottomPage(),
            ],
          ),
        ),
      ),
    );
  }
}
