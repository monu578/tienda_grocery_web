import 'package:flutter/material.dart';

import 'package:tienda_grocery_web/screen/login_page.dart';
import 'package:tienda_grocery_web/screen/responsive.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  double screenheight = 0;
  double screenwidth = 0;
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
                    width: 700,
                    height: 160,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Welcome to Verification",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(Icons.clear),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          obscureText: true,
                          controller: _textEditingController,
                          validator: (value) {
                            return value!.isNotEmpty ? null : "Enter otp";
                          },
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                            hintText: "OTP",
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 2, color: Colors.black),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Text(
                                "Resend OTP ",
                                style: TextStyle(
                                  fontSize: 14,
                                ),
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
                      primary: Colors.blue,
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      minimumSize: Size(300, 60),
                    ),
                    child: Text('Submitted'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      );
                      // if (_formKey.currentState!.validate()) {
                      //   Navigator.of(context).pop();
                      // }
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
    screenheight = MediaQuery.of(context).size.height;
    screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Responsive.isSmallScreen(context) ? signUpMoblile() : signUpWeb(),
            ],
          ),
        ],
      ),
    );
  }

  Widget signUpWeb() {
    return Container(
      height: screenheight,
      width: screenwidth,
      alignment: Alignment.center,
      child: Card(
        child: Container(
          height: screenheight / 1.4,
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
                "Create your account.",
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
                    hintText: 'Name',
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
                  decoration: InputDecoration(
                    hintText: 'Mobile Number',
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
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Confirm Password',
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
              SizedBox(
                height: 30,
              ),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    onPrimary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    minimumSize: Size(350, 60),
                  ),
                  child: Text('SignUp'),
                  onPressed: () async {
                    await showInformationDialog(context);
                  },
                ),
              ),
              SizedBox(height: 10),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ),
                  );
                },
                child: Text(
                  "SignIn",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget signUpMoblile() {
    return Container(
      height: screenheight / 1,
      width: screenwidth / 1,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
      child: Column(
        children: [
          Container(
            height: 70,
            width: 250,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/logo.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(
            "Create your account.",
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
                hintText: 'Name',
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
              decoration: InputDecoration(
                hintText: 'Mobile Number',
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
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Confirm Password',
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
          SizedBox(
            height: 30,
          ),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                onPrimary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                minimumSize: Size(350, 60),
              ),
              child: Text('SignUp'),
              onPressed: () async {
                await showInformationDialog(context);
              },
            ),
          ),
          SizedBox(height: 10),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginPage(),
                ),
              );
            },
            child: Text(
              "SignIn",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
