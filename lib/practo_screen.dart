import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:practo/explore_screen.dart';
import 'package:practo/string_constants/string_constants.dart';

import 'continue_screen.dart';

final List<String> imgList = [
  'assets/doctors.png',
  'assets/second.png',
  'assets/third.png',
  'assets/forth.png',
];

class PractoScreen extends StatelessWidget {
  const PractoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.indigo,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 60),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      StringConstants.practo,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 50,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CarouselSlider(
                      options: CarouselOptions(
                          height: 250,
                          autoPlay: true,
                          enableInfiniteScroll: false,
                          enlargeCenterPage: true,

                      ),

                      items: imgList.map((items) {
                        return Builder(builder: (BuildContext context) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: Container(
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
                              alignment: Alignment.center,
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                  child: Image.asset(items,fit: BoxFit.cover,height: 250,width: 300,)),
                               
                            ),
                          );
                        });
                      }).toList(),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      StringConstants.consult,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      StringConstants.started,
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    border: Border.all(color: Colors.blue, width: 2),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(StringConstants.additional),
                        Icon(Icons.arrow_drop_down),
                        Container(
                          color: Colors.grey,
                          width: 2,
                          height: 20,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: StringConstants.enter,
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
              SizedBox(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      StringConstants.trouble,
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: InkWell(
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => ContinueScreen()));
          },
          child: Container(
            height: 60,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.blue),
            child: Center(
                child: Text(
              'Continue',
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            )),
          ),
        ),
      ),
    );
  }
}
