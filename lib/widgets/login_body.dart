import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          children: [Expanded(child: Container()), BottomBar()],
        ),
      ),
    );
  }
}

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: size.height * 0.05,
            width: size.width * 0.25,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.blueAccent),
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(FaIcon(FontAwesomeIcons.arrowLeft).icon,
                      size: 20, color: Colors.white),
                  Text(
                    "Anterior",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )
                ],
              ),
            ),
          ),
          Expanded(child: Container()),
          Container(
            height: size.height * 0.05,
            width: size.width * 0.3,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.blueAccent),
            child: GestureDetector(
              onTap: () => Navigator.pushNamed(context, "main_page"),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Siguiente",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  Icon(FaIcon(FontAwesomeIcons.arrowRight).icon,
                      size: 20, color: Colors.white),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
