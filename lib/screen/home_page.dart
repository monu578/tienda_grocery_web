import 'package:flutter/material.dart';
import 'package:tienda_grocery_web/model/banana_model.dart';
import 'package:tienda_grocery_web/model/top_data_model.dart';
import 'package:tienda_grocery_web/screen/about_us_page.dart';
import 'package:tienda_grocery_web/screen/bottom_page.dart';
import 'package:tienda_grocery_web/screen/category_page.dart';
import 'package:tienda_grocery_web/screen/contact_us_page.dart';
import 'package:tienda_grocery_web/screen/drawer_page.dart';
import 'package:tienda_grocery_web/screen/my_bag_page.dart';
import 'package:tienda_grocery_web/screen/product_data_page.dart';
import 'package:tienda_grocery_web/screen/product_page.dart';
import 'package:tienda_grocery_web/screen/profile_page.dart';
import 'package:tienda_grocery_web/screen/responsive.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<TopDataModel> topdataModelList = [
    TopDataModel(
      image:
          "https://images.unsplash.com/photo-1556767576-cf0a4a80e5b8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Z3JvY2VyeSUyMHN0b3JlJTIwYWlzbGV8ZW58MHx8MHx8&w=1000&q=80",
      text: "Limited Sales",
      offer: "Upto 50% Off",
      text2: "Shop Now",
    ),
    TopDataModel(
      image:
          "https://media.istockphoto.com/photos/shopping-basket-full-of-variety-of-grocery-products-food-and-drink-on-picture-id1319625327?b=1&k=20&m=1319625327&s=170667a&w=0&h=FRRQT4yPOTumTJkCOmthHBcRvzoGvqw7drlSlYZhUNo=",
      text: "Limited Sales",
      offer: "Upto 50% Off",
      text2: "Shop Now",
    ),
    TopDataModel(
      image:
          "https://media.istockphoto.com/photos/fresh-vegetables-picture-id157732986?b=1&k=20&m=157732986&s=170667a&w=0&h=FOsuBG_bQ34AqpMyHYG-2twkZMO1_emNhkqbcsa5bZs=",
      text: "Limited Sales",
      offer: "Upto 50% Off",
      text2: "Shop Now",
    ),
    TopDataModel(
      image:
          "https://media.istockphoto.com/photos/fresh-vegetables-picture-id157732986?b=1&k=20&m=157732986&s=170667a&w=0&h=FOsuBG_bQ34AqpMyHYG-2twkZMO1_emNhkqbcsa5bZs=",
      text: "Limited Sales",
      offer: "Upto 50% Off",
      text2: "Shop Now",
    ),
  ];
  List<BananaModel> bananaModelList = [
    BananaModel(
        image: "assets/images/banana.png",
        text1: "  10% off",
        text2: "Original Banana",
        text3: "12 pcs",
        text4: "₹ 50",
        text5: " ₹ 60",
        favorite: false),
    BananaModel(
        image: "assets/images/banana.png",
        text1: "  10% off",
        text2: "Original Banana",
        text3: "12 pcs",
        text4: "₹ 50",
        text5: " ₹ 60",
        favorite: false),
    BananaModel(
        image: "assets/images/banana.png",
        text1: "  10% off",
        text2: "Original Banana",
        text3: "12 pcs",
        text4: "₹ 50",
        text5: " ₹ 60",
        favorite: false),
    BananaModel(
        image: "assets/images/banana.png",
        text1: "  10% off",
        text2: "Original Banana",
        text3: "12 pcs",
        text4: "₹ 50",
        text5: " ₹ 60",
        favorite: false),
    BananaModel(
        image: "assets/images/banana.png",
        text1: "  10% off",
        text2: "Original Banana",
        text3: "12 pcs",
        text4: "₹ 50",
        text5: " ₹ 60",
        favorite: false),
  ];

  Size? screenSize;
  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(screenSize!.width, 1000),
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
                              SizedBox(width: screenSize!.width / 20),
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
                              SizedBox(width: screenSize!.width / 20),
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
                        width: screenSize!.width / 50,
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
                        width: screenSize!.width / 50,
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProfilePage()),
                            );
                          },
                          child: Icon(Icons.person)),
                      SizedBox(
                        width: screenSize!.width / 150,
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
              height: screenSize!.height / 1.3,
              width: screenSize!.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      "https://images.unsplash.com/photo-1542838132-92c53300491e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Z3JvY2VyeXxlbnwwfHwwfHw%3D&w=1000&q=80"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 35,
                          width: 35,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Color(0xffCFEDFF),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: IconButton(
                            onPressed: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //     builder: (context) => ContactUsPage(),
                              //   ),
                              // );
                            },
                            icon: Icon(
                              Icons.arrow_back_ios,
                              size: 20,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Get Fresh Vegitables",
                            style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "We help you to buy fresh grocer for your home.\n Eat fresh and stay healthy",
                            style: TextStyle(
                              color: Color(0xffFFFFFF),
                            ),
                          ),
                          SizedBox(height: 15),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              side: BorderSide(
                                width: 3,
                                color: Colors.white,
                              ),
                              elevation: 3,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              minimumSize: Size(200, 70),
                            ),
                            onPressed: () {},
                            child: Text(
                              'Buy Now',
                              style: TextStyle(
                                fontSize: 24,
                                color: Color(0xffFFFFFF),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 35,
                      width: 35,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Color(0xffCFEDFF),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CategoryPage(),
                            ),
                          );
                        },
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      height: 200,
                      width: screenSize!.width,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: topdataModelList.length,
                        itemBuilder: (context, index) => topData(
                          topdataModelList[index],
                        ),
                      ),
                    ),
                  ],
                ),
                catergoryData(),
                SizedBox(
                  height: 15,
                ),
                prodctTextData(),
                BottomPage(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget topData(TopDataModel item) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductPage(),
                ),
              );
            },
            child: Container(
              height: 150,
              width: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    item.image,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(item.text),
              Text(
                item.offer,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 15),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xffF59201),
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  minimumSize: Size(100, 60),
                ),
                onPressed: () {},
                child: Text(
                  item.text2,
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xffFFFFFF),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget catergoryData() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Category",
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          cateTextData(),
        ],
      ),
    );
  }

  Widget cateTextData() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
            height: 40,
            width: 100,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color(0xffCFEDFF),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text("Fruits")),
        Container(
            height: 40,
            width: 100,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color(0xffCFEDFF),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text("Vegitables")),
        Container(
            height: 40,
            width: 100,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color(0xffCFEDFF),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text("Milk")),
        Container(
            height: 40,
            width: 100,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color(0xffCFEDFF),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text("Bread")),
        Container(
            height: 40,
            width: 100,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color(0xffCFEDFF),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text("Meat")),
        Container(
            height: 40,
            width: 100,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color(0xffCFEDFF),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text("Dry Fruits")),
      ],
    );
  }

  Widget prodctTextData() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Popular Product",
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 300,
              width: screenSize!.width,
              child: ListView.builder(
                  // shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: bananaModelList.length,
                  itemBuilder: (context, index) =>
                      productBanana(bananaModelList[index])),
            ),
          ),
        ],
      ),
    );
  }

  Widget productBanana(BananaModel item) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDataPage(),
                ),
              );
            },
            child: Container(
              height: 280,
              width: 280,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  Container(
                    height: 200,
                    width: 280,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(
                            item.image,
                          ),
                          fit: BoxFit.cover,
                        )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.all(8),
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                item.favorite = !item.favorite;
                                //log(item.favorite.toString());
                              });
                            },
                            icon: item.favorite == true
                                ? Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  )
                                : Icon(
                                    Icons.favorite_border_outlined,
                                  ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            height: 30,
                            width: 60,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  20,
                                ),
                              ),
                            ),
                            child: Row(
                              children: [
                                Text(
                                  item.text1,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      item.text2,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      item.text3,
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                item.text4,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                item.text5,
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(10)),
                            child: Icon(
                              Icons.shopping_cart,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
