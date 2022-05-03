import 'package:flutter/material.dart';
import 'package:tienda_grocery_web/screen/bottom_page.dart';
import 'package:tienda_grocery_web/screen/category_page.dart';
import 'package:tienda_grocery_web/screen/home_page.dart';
import 'package:tienda_grocery_web/screen/my_bag_page.dart';
import 'package:tienda_grocery_web/screen/drawer_page.dart';
import 'package:tienda_grocery_web/screen/my_order_page.dart';

import 'package:tienda_grocery_web/screen/responsive.dart';

import 'main_profile_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
              height: screenSize.height / 1.2,
              width: screenSize.width,
              child: Row(
                children: [
                  MainProfilePage(),
                  Expanded(
                    flex: 4,
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.wallet_membership),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Payment Methode",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 100,
                                ),
                                Text(
                                  "Choose your best Payment Methode",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Card(
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => MyBagPage(),
                                          ),
                                        );
                                      },
                                      child: Container(
                                        height: 80,
                                        width: 350,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(10),
                                              child: Container(
                                                height: 50,
                                                width: 50,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                      "assets/images/upi.png",
                                                    ),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    width: 250,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          "UPI",
                                                          style: TextStyle(
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                        Icon(
                                                          Icons
                                                              .arrow_forward_ios,
                                                          size: 14,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        "Google Pay, PhonePe & more",
                                                        style: TextStyle(
                                                            color: Colors.grey),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Card(
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => MyBagPage(),
                                          ),
                                        );
                                      },
                                      child: Container(
                                        height: 80,
                                        width: 350,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(10),
                                              child: Container(
                                                height: 50,
                                                width: 50,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                      "assets/images/wallet.png",
                                                    ),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    width: 250,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          "Wallet",
                                                          style: TextStyle(
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                        Icon(
                                                          Icons
                                                              .arrow_forward_ios,
                                                          size: 14,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        "PhonePe & more",
                                                        style: TextStyle(
                                                            color: Colors.grey),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Card(
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => MyBagPage(),
                                          ),
                                        );
                                      },
                                      child: Container(
                                        height: 80,
                                        width: 350,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(10),
                                              child: Container(
                                                height: 50,
                                                width: 50,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                      "assets/images/bank.png",
                                                    ),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    width: 250,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          "Netbanking",
                                                          style: TextStyle(
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                        Icon(
                                                          Icons
                                                              .arrow_forward_ios,
                                                          size: 14,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        "All India banks",
                                                        style: TextStyle(
                                                            color: Colors.grey),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Card(
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => MyBagPage(),
                                          ),
                                        );
                                      },
                                      child: Container(
                                        height: 80,
                                        width: 350,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(10),
                                              child: Container(
                                                height: 50,
                                                width: 50,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                      "assets/images/emi.png",
                                                    ),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    width: 250,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          "EMI",
                                                          style: TextStyle(
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                        Icon(
                                                          Icons
                                                              .arrow_forward_ios,
                                                          size: 14,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        "Cards, Walnut 369, and Earlysalary",
                                                        style: TextStyle(
                                                            color: Colors.grey),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Divider(
                              thickness: 1,
                            ),
                            Expanded(
                              child: Row(
                                children: [
                                  Card(
                                    child: Container(
                                      height: 300,
                                      width: 400,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            TextField(
                                              decoration: InputDecoration(
                                                  labelText: 'Card Number',
                                                  hintText: 'Card Number',
                                                  suffixIcon: Icon(
                                                      Icons.wallet_travel)),
                                            ),
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: Container(
                                                    width: screenSize.width / 3,
                                                    padding: EdgeInsets.all(5),
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                        hintText:
                                                            'Expiry (MM/YY)',
                                                        labelText:
                                                            'Expiry (MM/YY)',
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Container(
                                                    width: screenSize.width / 3,
                                                    padding: EdgeInsets.all(5),
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                        hintText:
                                                            'Expiry (MM/YY)',
                                                        labelText:
                                                            'Expiry (MM/YY)',
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            TextField(
                                              decoration: InputDecoration(
                                                  labelText: 'Card Name',
                                                  hintText: 'Card Name',
                                                  suffixIcon: Icon(
                                                      Icons.wallet_travel)),
                                            ),
                                            SizedBox(
                                              height: 50,
                                            ),
                                            ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                primary: Color(0xff38B6FF),
                                                elevation: 3,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                                minimumSize: Size(250, 50),
                                              ),
                                              onPressed: () {},
                                              child: Text(
                                                'Pay ₹ 230',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Color(0xffFFFFFF),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    height: screenSize.height / 3.3,
                                    width: screenSize.width / 4,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          "assets/images/img-e.png",
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
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
}
