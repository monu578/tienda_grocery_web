import 'package:flutter/material.dart';
import 'package:tienda_grocery_web/model/banana_model.dart';
import 'package:tienda_grocery_web/model/category_model.dart';
import 'package:tienda_grocery_web/screen/about_us_page.dart';
import 'package:tienda_grocery_web/screen/bottom_page.dart';
import 'package:tienda_grocery_web/screen/contact_us_page.dart';
import 'package:tienda_grocery_web/screen/drawer_page.dart';
import 'package:tienda_grocery_web/screen/home_page.dart';
import 'package:tienda_grocery_web/screen/my_bag_page.dart';
import 'package:tienda_grocery_web/screen/product_data_page.dart';
import 'package:tienda_grocery_web/screen/product_page.dart';
import 'package:tienda_grocery_web/screen/profile_page.dart';
import 'package:tienda_grocery_web/screen/responsive.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  List<CategoryModel> categoryModelList = [
    CategoryModel(image: "assets/images/img-f.png", text: "All"),
    CategoryModel(image: "assets/images/fruits.png", text: "Fruits"),
    CategoryModel(image: "assets/images/vegitable.png", text: "Vegitable"),
    CategoryModel(image: "assets/images/img-f.png", text: "All"),
    CategoryModel(image: "assets/images/fruits.png", text: "Fruits"),
    CategoryModel(image: "assets/images/vegitable.png", text: "Vegitable"),
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
                            // SizedBox(width: screenSize.width / 20),
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
                  image: AssetImage("assets/images/img-c.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ourCategoryData(),
            Divider(
              thickness: 3,
            ),
            Container(
              height: 280,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categoryModelList.length,
                itemBuilder: (context, index) => categoryItem(
                  categoryModelList[index],
                ),
              ),
            ),
            allProductData(),
            Divider(
              thickness: 2,
            ),
            Container(
              height: 300,
              child: ListView.builder(
                  // shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: bananaModelList.length,
                  itemBuilder: (context, index) =>
                      productBanana(bananaModelList[index])),
            ),
            BottomPage(),
          ],
        ),
      ),
    );
  }

  Widget ourCategoryData() {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
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
                  " Category",
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

  Widget categoryItem(CategoryModel item) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductPage(),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Container(
              height: 200,
              width: 200,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(item.image),
                  fit: BoxFit.cover,
                ),
                color: Color(0xffF4FAFF),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                item.text,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget allProductData() {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  "All ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Products",
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
