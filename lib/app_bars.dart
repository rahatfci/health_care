import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

AppBar homeAppBar(BuildContext context) {
  return AppBar(
    automaticallyImplyLeading: false,
    elevation: 0,
    backgroundColor: Colors.white,
    leading: IconButton(
      icon: const Icon(
        Icons.arrow_back_ios_new,
        color: kPrimaryColor,
      ),
      onPressed: () => Navigator.pop(context),
    ),
    title: const Center(
      child: Text(
        "Home Healthcare",
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
      ),
    ),
    actions: <Widget>[
      IconButton(
        icon: const Icon(
          Icons.add_alert_rounded,
          color: kPrimaryColor,
        ),
        onPressed: () {},
      ),
    ],
  );
}

AppBar staffAppBar(BuildContext context) {
  return AppBar(
    automaticallyImplyLeading: false,
    elevation: 0,
    backgroundColor: Colors.white,
    leading: IconButton(
      icon: const Icon(
        Icons.arrow_back_ios_new,
        color: kPrimaryColor,
      ),
      onPressed: () => Navigator.pop(context),
    ),
    title: const Center(
      child: Text(
        "Home Healthcare",
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
      ),
    ),
  );
}
