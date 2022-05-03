import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:tienda_grocery_web/screen/sign_up_page.dart';
import 'package:tienda_grocery_web/screen/store_page.dart';
import 'package:tienda_grocery_web/util/apis.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  double screenheight = 0;
  double screenwidth = 0;

  @override
  Widget build(BuildContext context) {
    screenheight = MediaQuery.of(context).size.height;
    screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                height: screenheight,
                width: screenwidth,
                alignment: Alignment.center,
                child: Card(
                  child: Container(
                    height: screenheight / 1.9,
                    width: screenwidth / 4,
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/logo.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Text(
                          "Welcome to Tienda",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Login to your account.",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Enter email ',
                              labelStyle: TextStyle(fontSize: 12),
                              contentPadding: EdgeInsets.only(left: 30),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: 'Password',
                              counterText: 'Forgot password?',
                              suffixIcon: Icon(
                                Icons.visibility_off_outlined,
                                color: Colors.grey,
                              ),
                              labelStyle: TextStyle(fontSize: 12),
                              contentPadding: EdgeInsets.only(left: 30),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        // Row(
                        //   children: [
                        //     Icon(Icons.check_box),
                        //     Text("Reminder Me"),
                        //   ],
                        // ),
                        SizedBox(
                          height: 30,
                        ),
                        Center(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              minimumSize: Size(350, 60),
                            ),
                            child: Text('SignIn'),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => StorePage(),
                                ),
                              );
                            },
                          ),
                        ),
                        SizedBox(height: 10),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignUpPage(),
                              ),
                            );
                          },
                          child: Text(
                            "SignUp",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
