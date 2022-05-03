import 'package:flutter/material.dart';
import 'package:tienda_grocery_web/screen/home_page.dart';
import 'package:tienda_grocery_web/screen/responsive.dart';
import 'package:tienda_grocery_web/screen/track_page.dart';

class ThankPage extends StatefulWidget {
  const ThankPage({Key? key}) : super(key: key);

  @override
  State<ThankPage> createState() => _ThankPageState();
}

class _ThankPageState extends State<ThankPage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        height: screenSize.height,
        width: screenSize.width,
        color: Colors.white,
        child: Responsive.isSmallScreen(context)
            ? AppBar(
                title: Text("Title"),
              )
            : Column(
                children: [
                  Text(
                    "Thank you!",
                    style: TextStyle(
                      color: Colors.grey.shade300,
                      fontSize: 65,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    height: screenSize.height / 1.6,
                    width: screenSize.width / 3.5,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage("assets/images/img-d.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Your Payment is Successfull",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Thankyou for your payment. An automated payment receipt will be sent to your registered email.;",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      minimumSize: Size(250, 50),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TrackPage(),
                        ),
                      );
                    },
                    child: Text(
                      'Track Order',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
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
                      "Back To Home",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
