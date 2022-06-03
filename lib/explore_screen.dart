import 'package:flutter/material.dart';
import 'package:practo/rahul_screen.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    {
      return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    children: [
                      Icon(Icons.menu),
                      Spacer(),
                      Container(
                        height: 40,
                        width: 150,
                        padding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.pinkAccent),
                        child: DefaultTabController(
                          length: 2,
                          child: TabBar(
                            unselectedLabelColor: Colors.black87,
                            indicatorSize: TabBarIndicatorSize.tab,
                            indicator: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.purpleAccent),
                            tabs: [
                              Tab(
                                text: 'Explore',
                              ),
                              Tab(
                                text: 'Plus',
                              ),
                            ],
                          ),
                        ),
                      ),
                      Icon(
                        Icons.account_balance_wallet_outlined,
                        size: 40,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.add_location_alt_sharp,
                            size: 25,
                          ),
                          Text(
                            'Bangalore',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          Icon(
                            Icons.arrow_drop_down_outlined,
                            size: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: Row(children: [
                              Icon(Icons.location_on, size: 25),

                            ]),
                          ),
                        ],
                      ),
                      Divider(
                        color: Colors.grey,
                        height: 3,
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.indigo,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'practo',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'care',
                                    style: TextStyle(
                                        color: Colors.blue, fontSize: 25),
                                  )
                                ],
                              ),
                              Text(
                                'surgeries',
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                'You are in safe hands',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 20),
                              ),
                              Text(
                                'Choose the  experts in end to end surgical care',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(color: Colors.white)),
                                child: Text(
                                  'Know More',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.white),
                                  textAlign: TextAlign.center,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        child: Image.asset(
                          'assets/doctors.png',
                          height: 150,
                          width: 150,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      'Our Offerings',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Container(
                  height: 200,
                  width: double.infinity,
                  child: GridView.count(
                    crossAxisCount: 2,
                    children: List.generate(
                      2,
                      (index) {
                        return Column(
                          children: [
                            ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25)),
                              child: Image.asset(
                                'assets/doctors.png',
                                height: 150,
                                width: 150,
                              ),
                            ),
                            Text(
                              'Find Doctors Near You',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text('Confirmed appointtments'),
                          ],
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  height: 400,
                  width: double.infinity,
                  child: GridView.count(
                    childAspectRatio: 0.6,
                    padding: EdgeInsets.all(10),
                    crossAxisCount: 3,
                    children: List.generate(
                      5,
                      (index) {
                        return Column(
                          children: [
                            Expanded(
                              child: ClipRRect(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(25),
                                ),
                                child: Image.asset(
                                  'assets/doctors.png',
                                  height: 150,
                                  width: 200,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Text(
                              'Find Doctors Near You',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text('Confirmed appointtments'),
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ],

            ),

          ),
          bottomNavigationBar: InkWell(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => RahulScreen()));
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
}
