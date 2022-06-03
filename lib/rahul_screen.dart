import 'package:flutter/material.dart';
import 'package:practo/string_constants/string_constants.dart';
import 'package:practo/personal.dart';
import './medical.dart';
import './lifestyle.dart';

class RahulScreen extends StatelessWidget {
  const RahulScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.indigo,
            leading: const IconButton(
              onPressed: null,
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
            title: const Text('Rahul Thakur'),
            bottom: (TabBar(
              tabs: [
                Tab(
                  text: StringConstants.personal,
                ),
                Tab(
                  text: StringConstants.medical,
                ),
                Tab(
                  text: StringConstants.lifestyle,
                ),
              ],
            ))),
        // bottomNavigationBar: Container(
        //   padding: EdgeInsets.all(8.0),
        //   decoration: BoxDecoration(
        //       borderRadius: BorderRadius.circular(10), color: Colors.blue),
        // ),
        body: const TabBarView(
            children: [Personal(), Medical(), const Lifestyle()]),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Container(
            height: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: Colors.blue),
            child: Center(
                child: Text(
              'Continue',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
              textAlign: TextAlign.center,
            )),
          ),
        ),
      ),
    );
  }
}
