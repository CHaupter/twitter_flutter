import 'package:flutter/cupertino.dart';
import 'package:twitter_flutter/widgets/widgets.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [Background(), SearchBody()],
      ),
    );
  }
}
