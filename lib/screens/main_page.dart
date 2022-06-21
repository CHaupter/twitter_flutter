import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:twitter_flutter/screens/screens.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final controller = PageController(
    initialPage: 0,
  );

  int pageIndex = 0;

  int navBarIndex = 0;
  @override
  Widget build(BuildContext context) {
    final pageView = PageView(
      controller: controller,
      children: [HomePage(), SearchPage(), NotificationPage()],
      onPageChanged: (value) {
        pageIndex = value;
        setNavBarIndex(value);
      },
    );
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 0, 0, 0),
          automaticallyImplyLeading: false,
          elevation: 0,
          title: Row(
            children: [
              Icon(FaIcon(FontAwesomeIcons.twitter).icon),
              Expanded(child: Container()),
              IconButton(
                  onPressed: null,
                  icon: FaIcon(
                    FontAwesomeIcons.envelope,
                    color: Colors.white,
                  ))
            ],
          ),
        ),
        body: Container(
          child: pageView,
        ),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.black,
            showUnselectedLabels: true,
            selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
            currentIndex: navBarIndex,
            onTap: (value) {
              pageIndex = value;
              controller.animateToPage(value,
                  duration: Duration(milliseconds: 500), curve: Curves.ease);
            },
            items: [
              BottomNavigationBarItem(
                  label: "",
                  icon: FaIcon(
                    FontAwesomeIcons.house,
                    color: Colors.white,
                  )),
              BottomNavigationBarItem(
                  label: "",
                  icon: FaIcon(
                    FontAwesomeIcons.magnifyingGlass,
                    color: Colors.white,
                  )),
              BottomNavigationBarItem(
                  label: "",
                  icon: FaIcon(
                    FontAwesomeIcons.bell,
                    color: Colors.white,
                  ))
            ]));
  }

  setNavBarIndex(int index) {
    setState(() {
      navBarIndex = index;

      print(navBarIndex);
    });
  }
}
