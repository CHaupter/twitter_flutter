import 'package:flutter/material.dart';
import 'package:twitter_flutter/widgets/widgets.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [Background(), TweetList()],
      )),
    );
  }
}

class TweetList extends StatelessWidget {
  const TweetList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) => TweetCard(),
    );
  }
}
