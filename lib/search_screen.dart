import 'package:flutter/material.dart';
import 'package:practo/string_constants/string_constants.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            color: Colors.blue,
            child: Row(
              children: [
                Icon(Icons.arrow_back),
                SizedBox(width: 15),
                Text(
                  StringConstants.appbar,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Column(
                  children: [
                    Text(StringConstants.location,
                        style: TextStyle(fontSize: 14)),
                    Row(
                      children: [
                        Text(StringConstants.bangalore,
                            style: TextStyle(fontSize: 14)),
                        Icon(Icons.arrow_drop_down)
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            color: Colors.grey,
            child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(5.0),
                    ),
                  ),
                  hintText: StringConstants.search,
                  hintStyle: TextStyle(color: Colors.grey)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  StringConstants.searchbyhealth,
                  textAlign: TextAlign.start,style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text(
                  StringConstants.explore,
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            height: 220,
            width: double.infinity,
            child: GridView.count(
              crossAxisCount: 3,
              children: List.generate(6, (index) {
                return Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(70)),
                      child: Image.asset(
                        'assets/doctors.png',
                        height: 60,
                        width: 60,
                      ),
                      
                    ),
                    Text('Piles Surgery')
                  ],
                );
              }),
            ),
          ),
          Divider(thickness: 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(StringConstants.speciality),
            ],
          ),
          Container(
            height: 350,
            width: double.infinity,
            child: GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 2,
              children: List.generate(8, (index) {
                return Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(70)),
                      child: Image.asset(
                        'assets/doctors.png',
                        height: 70, width: 70,
                        
                      ),
                      
                    ),
                    Text('Womens Health')
                  ],
                );
              }),
            ),
          )
        ],
      ),
    )));
  }
}
