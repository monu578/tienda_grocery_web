import 'package:flutter/material.dart';
import 'package:tienda_grocery_web/screen/drawer_page.dart';
import 'package:tienda_grocery_web/screen/responsive.dart';
import 'package:tienda_grocery_web/screen/store_page.dart';

class IdPage extends StatefulWidget {
  const IdPage({Key? key}) : super(key: key);

  @override
  State<IdPage> createState() => _IdPageState();
}

class _IdPageState extends State<IdPage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        height: screenSize.height,
        width: screenSize.width,
        color: Color(0xff119ABF),
        child: Responsive.isSmallScreen(context)
            ? AppBar(
                title: Text("Title"),
              )
            : Column(
                children: [
                  Container(
                    height: screenSize.height / 1.7,
                    width: screenSize.width / 2,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/id.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    height: screenSize.height / 2.5,
                    width: screenSize.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20.0),
                          topLeft: Radius.circular(20.0)),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(28.0),
                          child: Text(
                            "Shop ID",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          width: screenSize.width / 3,
                          padding: EdgeInsets.symmetric(
                            vertical: 8.0,
                            horizontal: 10,
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              prefix: Icon(
                                Icons.backup_table_outlined,
                                size: 20,
                              ),
                              border: OutlineInputBorder(),
                              labelText: "Enter shop ID",
                              hintText: "Enter shop ID",
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blue,
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            minimumSize: Size(300, 70),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => StorePage(),
                              ),
                            );
                          },
                          child: Text(
                            'Continue',
                            style: TextStyle(
                              fontSize: 24,
                              color: Color(0xffFFFFFF),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
      ),
      drawer: Responsive.isSmallScreen(context) ? DrawerPage() : null,
    );
  }
}
