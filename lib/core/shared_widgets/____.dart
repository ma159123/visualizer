import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  const Layout({Key? key , required this.widget}) : super(key: key);

  final Widget widget;

  @override
  Widget build(BuildContext context) {

    //List<Widget> widget = [];

    return Scaffold(
      body: widget,
    );
  }
}
