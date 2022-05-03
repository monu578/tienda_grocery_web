import 'package:flutter/material.dart';
import 'package:tienda_grocery_web/model/near_shop_model.dart';
import 'package:tienda_grocery_web/model/store_data_model.dart';
import 'package:tienda_grocery_web/screen/about_us_page.dart';
import 'package:tienda_grocery_web/screen/bottom_page.dart';
import 'package:tienda_grocery_web/screen/category_page.dart';
import 'package:tienda_grocery_web/screen/contact_us_page.dart';
import 'package:tienda_grocery_web/screen/drawer_page.dart';
import 'package:tienda_grocery_web/screen/home_page.dart';
import 'package:tienda_grocery_web/screen/responsive.dart';

class StorePage extends StatefulWidget {
  const StorePage({Key? key}) : super(key: key);

  @override
  State<StorePage> createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  var screenSize = 0;
  List<StoreDataModel> storeList = [
    StoreDataModel(
      images:
          "https://images.unsplash.com/photo-1550989460-0adf9ea622e2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fGdyb2Nlcnl8ZW58MHx8MHx8&w=1000&q=80",
      text1: "10:00 AM to 10:00 PM",
      text2: "4.9",
      text3: "V-Mart Grocery Store",
      text4:
          "3rd Floor V-Mart Fashion Hub Krole Bagh Main Rode\n New Delhi 110001",
    ),
    StoreDataModel(
      images:
          "https://images.unsplash.com/photo-1550989460-0adf9ea622e2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fGdyb2Nlcnl8ZW58MHx8MHx8&w=1000&q=80",
      text1: "10:00 AM to 10:00 PM",
      text2: "4.9",
      text3: "V-Mart Grocery Store",
      text4:
          "3rd Floor V-Mart Fashion Hub Krole Bagh Main Rode\n New Delhi 110001",
    ),
    StoreDataModel(
      images:
          "https://images.unsplash.com/photo-1550989460-0adf9ea622e2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fGdyb2Nlcnl8ZW58MHx8MHx8&w=1000&q=80",
      text1: "10:00 AM to 10:00 PM",
      text2: "4.9",
      text3: "V-Mart Grocery Store",
      text4:
          "3rd Floor V-Mart Fashion Hub Krole Bagh Main Rode\n New Delhi 110001",
    ),
    StoreDataModel(
      images:
          "https://images.unsplash.com/photo-1550989460-0adf9ea622e2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fGdyb2Nlcnl8ZW58MHx8MHx8&w=1000&q=80",
      text1: "10:00 AM to 10:00 PM",
      text2: "4.9",
      text3: "V-Mart Grocery Store",
      text4:
          "3rd Floor V-Mart Fashion Hub Krole Bagh Main Rode\n New Delhi 110001",
    ),
  ];
  List<NearShopModel> nearModelList = [
    NearShopModel(
      images:
          "https://c8.alamy.com/comp/D9KF68/fresh-fruit-and-vegetables-stall-at-chatuchak-weekend-market-the-largest-D9KF68.jpg",
      text1: "10:00 AM to 10:00 PM",
      text2: "4.9",
      text3: "V-Mart Grocery Store",
      text4:
          "3rd Floor V-Mart Fashion Hub Krole Bagh Main Rode\n New Delhi 110001",
    ),
    NearShopModel(
      images:
          "https://c8.alamy.com/comp/D9KF68/fresh-fruit-and-vegetables-stall-at-chatuchak-weekend-market-the-largest-D9KF68.jpg",
      text1: "10:00 AM to 10:00 PM",
      text2: "4.9",
      text3: "V-Mart Grocery Store",
      text4:
          "3rd Floor V-Mart Fashion Hub Krole Bagh Main Rode\n New Delhi 110001",
    ),
    NearShopModel(
      images:
          "https://c8.alamy.com/comp/D9KF68/fresh-fruit-and-vegetables-stall-at-chatuchak-weekend-market-the-largest-D9KF68.jpg",
      text1: "10:00 AM to 10:00 PM",
      text2: "4.9",
      text3: "V-Mart Grocery Store",
      text4:
          "3rd Floor V-Mart Fashion Hub Krole Bagh Main Rode\n New Delhi 110001",
    ),
  ];
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      Row(
                        children: [
                          InkWell(onTap: () {}, child: Icon(Icons.qr_code)),
                          SizedBox(
                            width: screenSize.width / 50,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Icon(Icons.location_on),
                          ),
                          SizedBox(
                            width: screenSize.width / 150,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
      ),
      drawer: Responsive.isSmallScreen(context) ? DrawerPage() : null,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
              "Your Store",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            height: 120,
            width: screenSize.width,
            child: Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: storeList.length,
                  itemBuilder: (context, index) => storeData(storeList[index])),
            ),
          ),
          nearshowShop(),
          BottomPage(),
        ],
      ),
      // bottomNavigationBar: BottomPage(),
    );
  }

  Widget storeData(StoreDataModel item) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomePage(),
            ),
          );
        },
        child: Card(
          child: Container(
            height: 100,
            width: 380,
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Container(
                  height: 70,
                  width: 70,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: NetworkImage(
                        item.images,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 285,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              item.text1,
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12),
                            ),
                            Container(
                              height: 25,
                              width: 40,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.green,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Text(
                                      item.text2,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
                                      ),
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 10,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        item.text3,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        item.text4,
                        style: TextStyle(color: Colors.grey, fontSize: 12),
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

  Widget nearshowShop() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Near by Store",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text("View All",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  )),
            ],
          ),
          Container(
            height: 125,
            child: Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: nearModelList.length,
                  itemBuilder: (context, index) =>
                      nearshopData(nearModelList[index])),
            ),
          ),
        ],
      ),
    );
  }

  Widget nearshopData(NearShopModel item) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Container(
          height: 100,
          width: 420,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Container(
                height: 80,
                width: 80,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: NetworkImage(
                      item.images,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 300,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            item.text1,
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                          Container(
                            height: 25,
                            width: 40,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.green,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Text(
                                    item.text2,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                    ),
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 10,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      item.text3,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      item.text4,
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
