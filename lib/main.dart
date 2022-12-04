import 'package:flutter/material.dart';

import 'login_page.dart';
import 'praktika/page_1.dart';
import 'praktika/page_2.dart';
import 'praktika/page_3.dart';
import 'praktika/page_4.dart';
import 'praktika/page_5.dart';
import 'praktika/page_6.dart';
import 'praktika/page_7.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PageOne()
    );
  }
}
