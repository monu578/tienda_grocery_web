import 'package:flutter/material.dart';
import 'package:tienda_grocery_web/screen/bottom_page.dart';
import 'package:tienda_grocery_web/screen/category_page.dart';
import 'package:tienda_grocery_web/screen/contact_us_page.dart';
import 'package:tienda_grocery_web/screen/drawer_page.dart';
import 'package:tienda_grocery_web/screen/home_page.dart';
import 'package:tienda_grocery_web/screen/my_bag_page.dart';
import 'package:tienda_grocery_web/screen/responsive.dart';

class AboutsUsPage extends StatefulWidget {
  const AboutsUsPage({Key? key}) : super(key: key);

  @override
  State<AboutsUsPage> createState() => _AboutsUsPageState();
}

class _AboutsUsPageState extends State<AboutsUsPage> {
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
                                'Abouts',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            SizedBox(width: screenSize.width / 20),
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
                                'Contact Us',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
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
                      InkWell(onTap: () {}, child: Icon(Icons.person)),
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
        child: Column(
          children: [
            Container(
              height: screenSize.height / 1.7,
              width: screenSize.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/img-b.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            aboutData(),
            SizedBox(
              height: 15,
            ),
            ourAboutData(),
            Divider(
              thickness: 5,
            ),
            BottomPage(),
          ],
        ),
      ),
    );
  }

  Widget aboutData() {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Container(
          height: 400,
          width: 400,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/img-f.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          width: 30,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome to Our Shop",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Fresh and Organic Grocries",
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing\n elit, sed do eiusmod tempor incididunt ut labore et dolore\n magna aliqua. Ut enim ad minim veniam, quis nostrud\n exercitation ullad est laborum",
              style: TextStyle(fontSize: 20, color: Colors.grey),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "commodo consequat. Duis aute irure dolor in\n reprehenderit in voluptate velit esse cillum dolore eu\n fugiat nulla pariatur. Excepteur sint occaecat cupidatat\n non proident, sunt in culp.",
              style: TextStyle(fontSize: 20, color: Colors.grey),
            ),
            SizedBox(height: 15),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                minimumSize: Size(200, 70),
              ),
              onPressed: () {},
              child: Text(
                'Read More',
                style: TextStyle(
                  fontSize: 24,
                  color: Color(0xffFFFFFF),
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }

  Widget ourAboutData() {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  "Our",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  " Farm",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Text(
              "View All>>",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
