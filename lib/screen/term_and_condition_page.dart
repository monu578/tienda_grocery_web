import 'package:flutter/material.dart';

class TermAndConditionPage extends StatefulWidget {
  const TermAndConditionPage({Key? key}) : super(key: key);

  @override
  State<TermAndConditionPage> createState() => _TermAndConditionPageState();
}

class _TermAndConditionPageState extends State<TermAndConditionPage> {
  double screenheight = 0;
  double screenwidth = 0;

  @override
  Widget build(BuildContext context) {
    screenheight = MediaQuery.of(context).size.height;
    screenwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("Term & Condition"),
      ),
      body: ListView(
        children: [
          Column(
            children: [],
          )
        ],
      ),
    );
  }
}
