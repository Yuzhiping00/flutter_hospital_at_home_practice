import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// Custom App Bar has to implements PreferredSizeWidget because Scaffold requires as appbar class to implement that widget
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.appBarTitle});
  final String appBarTitle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color.fromRGBO(214, 222, 225, 0.9),
      title: Text(
        appBarTitle,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
      // leading: Padding(
      //   padding: const EdgeInsets.all(15.0),
      //   child: FaIcon(FontAwesomeIcons.angleLeft),
      // ),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: IconButton(
            icon: const FaIcon(
              FontAwesomeIcons.solidCircleQuestion,
              color: Color.fromRGBO(163, 73, 164, 0.9),
            ), // The help icon
            onPressed: () {
              // Define what happens when the help icon is pressed
              print('Help icon pressed!');
            },
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
