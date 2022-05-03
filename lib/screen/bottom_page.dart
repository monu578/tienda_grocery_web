import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:tienda_grocery_web/screen/home_page.dart';

class BottomPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return BottomAppBar(
      child: ClipPath(
        clipper: WaveClipperTwo(flip: true, reverse: true),
        child: Container(
          height: screenSize.height / 1.8,
          padding: EdgeInsets.only(top: 60),
          color: Color(0xffF4FAFF),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                        },
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/logo.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            "Lorem ipsum dolor sit amet, consectetur\n adipiscing elit, sed do eiusmod tempor\n incididunt ut labore et dolore magna\n aliqua. Ut enim ad minim veniam,\n quis nostrud exercitation ullamco\n laboris nisi ut."),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text("Address: "),
                            Text(
                              "C-tower 404 A",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          children: [
                            Text("Email: "),
                            Text(
                              "demo@gmail.com",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          children: [
                            Text("Call us: "),
                            Text(
                              "1234567890",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Quick Links",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.blue,
                            ),
                            Text("Home")
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.blue,
                            ),
                            Text("Shop")
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.blue,
                            ),
                            Text("Abouts")
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.blue,
                            ),
                            Text("Review")
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.blue,
                            ),
                            Text("Contect Us")
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Extra Links",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.blue,
                            ),
                            Text("My Order")
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.blue,
                            ),
                            Text("My Favorite")
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.blue,
                            ),
                            Text("My Wishlist")
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.blue,
                            ),
                            Text("My Account")
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.blue,
                            ),
                            Text("Term or Use")
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        "Download Our App",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          height: 160,
                          width: 220,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/download.png"),
                              fit: BoxFit.cover,
                            ),
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
    );
  }
}
