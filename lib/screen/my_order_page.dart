import 'package:flutter/material.dart';
import 'package:tienda_grocery_web/screen/bottom_page.dart';
import 'package:tienda_grocery_web/screen/category_page.dart';
import 'package:tienda_grocery_web/screen/home_page.dart';
import 'package:tienda_grocery_web/screen/main_profile_page.dart';
import 'package:tienda_grocery_web/screen/my_bag_page.dart';
import 'package:tienda_grocery_web/screen/responsive.dart';

class MyOrderPage extends StatefulWidget {
  const MyOrderPage({Key? key}) : super(key: key);

  @override
  State<MyOrderPage> createState() => _MyOrderPageState();
}

class _MyOrderPageState extends State<MyOrderPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  Future<void> showInformationDialog(BuildContext context) async {
    return await showDialog(
        context: context,
        builder: (context) {
          final TextEditingController _textEditingController =
              TextEditingController();
          bool isChecked = false;
          return StatefulBuilder(builder: (context, setState) {
            return AlertDialog(
              content: Form(
                  key: _formKey,
                  child: Container(
                    width: 700,
                    height: 250,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Order #546467",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(Icons.clear),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        viewAllData()
                      ],
                    ),
                  )),
            );
          });
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
                              SizedBox(width: 50),
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
                              SizedBox(width: 20),
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
                              // SizedBox(width: screenSize!.width / 20),
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
                            ]),
                      ),
                      InkWell(onTap: () {}, child: Icon(Icons.search)),
                      SizedBox(
                        width: 50,
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
                        width: 50,
                      ),
                      InkWell(onTap: () {}, child: Icon(Icons.person)),
                      SizedBox(
                        width: 50,
                      ),
                    ],
                  ),
                ),
              ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: screenSize.height / 1.4,
              width: screenSize.width,
              child: Row(
                children: [
                  MainProfilePage(),
                  Expanded(
                    flex: 4,
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 40, top: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Your Order",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                            Divider(
                              thickness: 1,
                            ),
                            Row(children: [
                              showCard(),
                              showCard(),
                              showCard(),
                            ]),
                            SizedBox(
                              height: 10,
                            ),
                            Row(children: [
                              showCard(),
                              showCard(),
                              showCard(),
                            ])
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            BottomPage(),
          ],
        ),
      ),
    );
  }

  Widget showCard() {
    return Row(
      children: [
        Card(
          child: Container(
            height: 210,
            width: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        alignment: Alignment.topLeft,
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/cart.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 300,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Order#4565565",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                  side: BorderSide(
                                    width: 2,
                                    color: Color(0xffFF9C1C),
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  minimumSize: Size(140, 40),
                                ),
                                onPressed: () {},
                                child: Text(
                                  'Confirmed',
                                  style: TextStyle(
                                    color: Color(0xffFF9C1C),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 45.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "items:",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 45.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "1 Kg Onion, Potato,....",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      InkWell(
                        onTap: () async {
                          await showInformationDialog(context);
                        },
                        child: Text(
                          " View All",
                          style: TextStyle(color: Color(0xff38B6FF)),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 45.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Order Date :",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text("February 26, 2022"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 45.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Total Amt :",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text("₹ 324"),
                    ],
                  ),
                ),
                Divider(
                  thickness: 2,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                          onTap: () {},
                          child: Text(
                            "View Details",
                            style: TextStyle(
                              color: Color(0xff38B6FF),
                            ),
                          )),
                      Text(
                        "Track Order",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        "Get Support",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget viewAllData() {
    return Row(
      children: [
        Container(
          height: 125,
          width: 170,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/banana.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          children: [
            Text(
              "Original Banana",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "12 Pcs / 1Kg",
              style: TextStyle(
                  color: Color(0xff6BAD42),
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "₹50",
              style: TextStyle(
                  color: Color(0xffFF9C1C), fontWeight: FontWeight.bold),
            ),
          ],
        )
      ],
    );
  }
}
