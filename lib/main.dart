import 'package:flutter/material.dart';
import 'package:instagram_ui/Pages/feed_page.dart';
import 'package:instagram_ui/Pages/profiles.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KikiGram',
      home: FeedPage(),
    );
  }
}
