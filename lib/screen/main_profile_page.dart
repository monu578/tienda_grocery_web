import 'package:flutter/material.dart';
import 'package:tienda_grocery_web/screen/history_page.dart';
import 'package:tienda_grocery_web/screen/wishlist_page.dart';

import 'my_bag_page.dart';
import 'my_order_page.dart';

class MainProfilePage extends StatefulWidget {
  const MainProfilePage({Key? key}) : super(key: key);

  @override
  State<MainProfilePage> createState() => _MainProfilePageState();
}

class _MainProfilePageState extends State<MainProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJVL8ojzMQSX26Id2LfvDJAONEBnWbKGTUl0OrbVJXSuV_x33QDaE58uLArDijBINZNFE&usqp=CAU"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Text(
              "Monu Pandey",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "monu1234@gmail.Com",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyOrderPage(),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.mobile_friendly,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "My Orders",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            // InkWell(
            //   onTap: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) => HistoryPage(),
            //       ),
            //     );
            //   },
            //   child: Padding(
            //     padding: const EdgeInsets.all(8.0),
            //     child: Row(
            //       children: [
            //         Icon(
            //           Icons.alarm_add_outlined,
            //           color: Colors.blue,
            //         ),
            //         SizedBox(
            //           width: 10,
            //         ),
            //         Text(
            //           "History",
            //           style: TextStyle(
            //               color: Colors.black,
            //               fontSize: 16,
            //               fontWeight: FontWeight.bold),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyBagPage(),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.home_filled,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Payment Method",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WishlistPage(),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.favorite,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Wishlist",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.home_max_sharp,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Term & Condition",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xff38B6FF),
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                minimumSize: Size(250, 50),
              ),
              onPressed: () {},
              child: Text(
                'Log Out',
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xffFFFFFF),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
