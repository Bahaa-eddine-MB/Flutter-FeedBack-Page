import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'FeedPage.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: FeedPage(),
    );
  }
}
