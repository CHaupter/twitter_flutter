import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:twitter_flutter/widgets/widgets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff005298),
        elevation: 0,
        title: Row(
          children: [
            Icon(FaIcon(FontAwesomeIcons.twitter).icon),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text("LOGIN PAGE"),
            ),
            Expanded(child: Container()),
            IconButton(
                onPressed: null,
                icon: FaIcon(
                  FontAwesomeIcons.ellipsisVertical,
                  color: Colors.white,
                ))
          ],
        ),
      ),
      body: SafeArea(
        child: Stack(children: [Background(), LoginBody()]),
      ),
    );
  }
}
