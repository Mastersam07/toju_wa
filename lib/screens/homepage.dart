import 'package:flutter/material.dart';
import 'package:tojuwa/widgets/widgets.dart';
import 'package:tojuwa/screens/MyDrrawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      drawer: MyDrawer(),
    );
  }
}
