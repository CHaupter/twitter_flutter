import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black,
        child: SafeArea(
          child: Container(),
        ));
  }
}
