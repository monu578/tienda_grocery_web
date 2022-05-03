import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {},
                child: Text(
                  'Grocery',
                  style: TextStyle(color: Colors.black, fontSize: 22),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Divider(
                  thickness: 2,
                ),
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  'Category',
                  style: TextStyle(color: Colors.black, fontSize: 22),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Divider(
                  thickness: 2,
                ),
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  'Abouts',
                  style: TextStyle(color: Colors.black, fontSize: 22),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Divider(
                  thickness: 2,
                ),
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  'Contact Us',
                  style: TextStyle(color: Colors.black, fontSize: 22),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Divider(
                  thickness: 2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
