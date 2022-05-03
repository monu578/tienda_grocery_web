import 'dart:html';

import 'package:flutter/material.dart';
import 'package:tienda_grocery_web/screen/category_page.dart';
import 'package:tienda_grocery_web/screen/home_page.dart';
import 'package:tienda_grocery_web/screen/my_bag_page.dart';
import 'package:tienda_grocery_web/screen/responsive.dart';
import 'package:tienda_grocery_web/screen/thank_page.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TrackPage extends StatefulWidget {
  const TrackPage({Key? key}) : super(key: key);

  @override
  State<TrackPage> createState() => _TrackPageState();
}

class _TrackPageState extends State<TrackPage> {
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
                    width: 450,
                    height: 255,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Request Cancellation",
                              style: TextStyle(
                                color: Color.fromARGB(255, 2, 10, 15),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(Icons.clear),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ListTile(
                          title: Text(
                            "Order #6575767",
                            style: TextStyle(
                              color: Color.fromARGB(255, 2, 10, 15),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text("1 Item"),
                          trailing: Text("Rs.50"),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ListTile(
                              title: const Text('I Order it by mistake'),
                              leading: new Radio(
                                value: 0,
                                groupValue: 1,
                                onChanged: (ValueKey) async {
                                  setState(() {});
                                },
                              ),
                            ),
                            ListTile(
                              title: const Text(
                                  'I Want to Change my delivery address'),
                              leading: new Radio(
                                value: 0,
                                groupValue: 0,
                                onChanged: (ValueKey) async {
                                  setState(() {});
                                },
                              ),
                            ),
                            ListTile(
                              title: const Text('I have changed my mind'),
                              leading: new Radio(
                                value: 0,
                                groupValue: 1,
                                onChanged: (ValueKey) async {
                                  setState(() {});
                                },
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )),
              actions: <Widget>[
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 222, 14, 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      minimumSize: Size(300, 60),
                    ),
                    child: Text(
                      'Cancel Order',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ),
                        );
                      }
                    },
                  ),
                ),
              ],
            );
          });
        });
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(
            screenSize.width, Responsive.isSmallScreen(context) ? 60 : 100),
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
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ThankPage(),
                    ),
                  );
                },
                icon: Icon(Icons.arrow_back),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 10),
                child: Text(
                  "Track a Parcel",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: screenSize.width / 1.2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: screenSize.width / 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 16),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: 'Enter a track number',
                                    suffixIcon: Icon(Icons.arrow_forward),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: Text(
                                  "Where can I find the Tracking Number",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/hero.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Row(
                      children: [
                        Text(
                          "Your Parcel",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          " 5677865676 ",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                        Text(
                          "on the way!",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Row(
                      children: [
                        Icon(Icons.share_arrival_time),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Approximate arrival Date : ",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          "March 21, 2022",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Row(
                      children: [
                        Icon(Icons.location_on),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Address : ",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          "H-12, Dharma Apartment Nirman Vihar Delhi 110092",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: screenSize.width / 1.2,
                    height: screenSize.height / 6,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TimelineTile(
                          isFirst: true,
                          beforeLineStyle: const LineStyle(
                            color: Colors.deepOrange,
                            thickness: 6,
                          ),
                          indicatorStyle: const IndicatorStyle(
                            width: 20,
                            color: Colors.cyan,
                          ),
                          axis: TimelineAxis.horizontal,
                          alignment: TimelineAlign.center,
                          endChild: Container(
                            constraints: const BoxConstraints(
                              minWidth: 120,
                            ),
                            // color: Colors.white,
                            child: Column(
                              children: [
                                Container(
                                  height: 25,
                                  width: 25,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJzFofLmfVOQk0g0InueJADkrgvKgKGgqn3oB2aElR8KR262H96YquHWqTDzvd2wQzZzU&usqp=CAU"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Text(
                                  "Sended Request\n08:23 am",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                  ),
                                )
                              ],
                            ),
                          ),
                          startChild: Container(
                              // color: Colors.amberAccent,
                              ),
                        ),
                        TimelineTile(
                          beforeLineStyle: const LineStyle(
                            color: Colors.deepOrange,
                            thickness: 6,
                          ),
                          indicatorStyle: const IndicatorStyle(
                            width: 20,
                            color: Colors.cyan,
                          ),
                          axis: TimelineAxis.horizontal,
                          alignment: TimelineAlign.center,
                          endChild: Container(
                            constraints: const BoxConstraints(
                              minWidth: 120,
                            ),
                            // color: Colors.lightGreenAccent,
                            child: Column(
                              children: [
                                Container(
                                  height: 25,
                                  width: 25,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJzFofLmfVOQk0g0InueJADkrgvKgKGgqn3oB2aElR8KR262H96YquHWqTDzvd2wQzZzU&usqp=CAU"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Text(
                                  "Confirmed\n08:54 am",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                  ),
                                )
                              ],
                            ),
                          ),
                          startChild: Container(
                              // color: Colors.amberAccent,
                              ),
                        ),
                        TimelineTile(
                          beforeLineStyle: const LineStyle(
                            color: Colors.deepOrange,
                            thickness: 6,
                          ),
                          indicatorStyle: const IndicatorStyle(
                            width: 20,
                            color: Colors.cyan,
                          ),
                          axis: TimelineAxis.horizontal,
                          alignment: TimelineAlign.center,
                          endChild: Container(
                            constraints: const BoxConstraints(
                              minWidth: 120,
                            ),
                            //color: Colors.lightGreenAccent,
                            child: Column(
                              children: [
                                Container(
                                  height: 25,
                                  width: 25,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJzFofLmfVOQk0g0InueJADkrgvKgKGgqn3oB2aElR8KR262H96YquHWqTDzvd2wQzZzU&usqp=CAU"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Text(
                                  "Shipper\n08:59 am",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                  ),
                                )
                              ],
                            ),
                          ),
                          startChild: Container(
                              //  color: Colors.amberAccent,
                              ),
                        ),
                        TimelineTile(
                          // beforeLineStyle: const LineStyle(
                          //   color: Colors.deepOrange,
                          //   thickness: 6,
                          // ),
                          axis: TimelineAxis.horizontal,
                          alignment: TimelineAlign.center,
                          endChild: Container(
                            constraints: const BoxConstraints(
                              minWidth: 120,
                            ),
                            //  color: Colors.lightGreenAccent,
                            child: Column(
                              children: [
                                Container(
                                  height: 25,
                                  width: 25,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJzFofLmfVOQk0g0InueJADkrgvKgKGgqn3oB2aElR8KR262H96YquHWqTDzvd2wQzZzU&usqp=CAU"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Text(
                                  "Shipping\n09:05 am",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                  ),
                                )
                              ],
                            ),
                          ),
                          startChild: Container(
                              // color: Colors.amberAccent,
                              ),
                        ),
                        TimelineTile(
                          isLast: true,
                          // beforeLineStyle: const LineStyle(
                          //   color: Colors.deepOrange,
                          //   thickness: 6,
                          // ),
                          axis: TimelineAxis.horizontal,
                          alignment: TimelineAlign.center,
                          endChild: Container(
                            constraints: const BoxConstraints(
                              minWidth: 120,
                            ),
                            // color: Colors.lightGreenAccent,
                            child: Column(
                              children: [
                                Container(
                                  height: 25,
                                  width: 25,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJzFofLmfVOQk0g0InueJADkrgvKgKGgqn3oB2aElR8KR262H96YquHWqTDzvd2wQzZzU&usqp=CAU"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Text(
                                  "Receive Grocery",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                  ),
                                )
                              ],
                            ),
                          ),
                          startChild: Container(
                              //color: Colors.amberAccent,
                              ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xffFFE8E8),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          minimumSize: Size(250, 50),
                        ),
                        onPressed: () async {
                          await showInformationDialog(context);
                        },
                        child: Text(
                          'Cancel Your Order',
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        )
      ]),
    );
  }
}
