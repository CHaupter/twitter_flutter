import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TweetCard extends StatelessWidget {
  const TweetCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        UserInfo(),
        UserTweet(),
        UserOptions(),
        Divider(
          color: Colors.white,
          thickness: 0.5,
        )
      ],
    ));
  }
}

class UserOptions extends StatelessWidget {
  const UserOptions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.075),
      child: Row(
        children: [
          Expanded(
              child: IconButton(
            onPressed: null,
            icon: FaIcon(
              FontAwesomeIcons.comment,
              color: Colors.white,
            ),
          )),
          Expanded(
              child: IconButton(
            onPressed: null,
            icon: FaIcon(
              FontAwesomeIcons.retweet,
              color: Colors.white,
            ),
          )),
          Expanded(
              child: IconButton(
            onPressed: null,
            icon: FaIcon(
              FontAwesomeIcons.heart,
              color: Colors.white,
            ),
          )),
          Expanded(
              child: IconButton(
            onPressed: null,
            icon: FaIcon(
              FontAwesomeIcons.shareNodes,
              color: Colors.white,
            ),
          ))
        ],
      ),
    );
  }
}

class UserTweet extends StatelessWidget {
  const UserTweet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      children: [
        Flexible(
          child: Container(
            padding: EdgeInsets.only(
                left: size.width * 0.15, right: size.width * 0.075, top: 15),
            child: Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}

class UserInfo extends StatelessWidget {
  const UserInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      children: [
        Container(
            padding: EdgeInsets.only(top: size.height * 0.02),
            child: IconButton(
              onPressed: null,
              icon: FaIcon(
                FontAwesomeIcons.two,
                color: Colors.white,
                size: 50,
              ),
            )),
        Container(
          padding: EdgeInsets.only(left: size.width * 0.03),
          child: Row(
            children: [
              Text(
                "Usuario",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white),
              ),
              Container(
                padding: EdgeInsets.only(left: size.width * 0.01),
                child: Text(
                  "@Usuario",
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
              )
            ],
          ),
        ),
        Expanded(child: Container()),
        Container(
          alignment: Alignment.topCenter,
          child: Text("· Hace x min",
              style: TextStyle(fontSize: 20, color: Colors.white)),
        )
      ],
    );
  }
}
