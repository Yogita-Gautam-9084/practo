import 'package:flutter/material.dart';
import 'package:practo/continue_screen.dart';
import 'package:practo/explore_screen.dart';
import 'package:practo/practo_screen.dart';
import 'package:practo/rahul_screen.dart';
import 'package:practo/search_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(),
        // home: const ContinueScreen(),
       home: const PractoScreen(),
        // home: const SearchScreen(),
        //  home: const RahulScreen(),
      //   home: const ExploreScreen(),
    );
  }
}
