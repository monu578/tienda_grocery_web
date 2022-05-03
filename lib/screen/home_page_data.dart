import 'package:flutter/material.dart';
import 'package:tienda_grocery_web/screen/about_us_page.dart';
import 'package:tienda_grocery_web/screen/category_page.dart';
import 'package:tienda_grocery_web/screen/contact_us_page.dart';
import 'package:tienda_grocery_web/screen/home_page.dart';
import 'package:tienda_grocery_web/screen/my_bag_page.dart';
import 'package:tienda_grocery_web/screen/responsive.dart';

class HomaePageData extends StatefulWidget {
  const HomaePageData({Key? key}) : super(key: key);

  @override
  State<HomaePageData> createState() => _HomaePageDataState();
}

class _HomaePageDataState extends State<HomaePageData> {
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
                      Image(
                        image: AssetImage('assets/images/logo.png'),
                        height: 60,
                        width: 60,
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
                                  'Home',
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
                                  'Product',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                              SizedBox(width: 50),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => AboutsUsPage(),
                                    ),
                                  );
                                },
                                child: Text(
                                  'Services',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                              SizedBox(width: 50),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ContactUsPage(),
                                    ),
                                  );
                                },
                                child: Text(
                                  'Pricing',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                            ],),
                      ),
                      Container(
                        width: 250,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.search),
                            hintText: 'Search ',
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.pink,
                          onPrimary: Colors.white,
                          minimumSize: Size(100, 40),
                        ),
                        onPressed: () {},
                        child: Text('Login'),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                    ],
                  ),
              ),
        ),
      ),
    );
  }
}
