import 'package:flutter/material.dart';

class Medical extends StatelessWidget {
  const Medical({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height:double.infinity,
      width:50 ,
      color: Colors.white,
      child: ListView(
        shrinkWrap: true,
        children: <Widget>[
      ListTile(
      title: Text('Allergies',style: TextStyle(color: Colors.grey),),
       trailing: Text('No'),

      ),

    Divider(),
          ListTile(
            title: Text('Current Medications',style: TextStyle(color: Colors.grey),),
            trailing: Text('add medications',style: TextStyle(color: Colors.grey),),

          ),

          Divider(),
          ListTile(
            title: Text('Past Medications',style: TextStyle(color: Colors.grey),),
            trailing: Text('add medications',style: TextStyle(color: Colors.grey),),

          ),

          Divider(),
          ListTile(
            title: Text('Chronic Diseases',style: TextStyle(color: Colors.grey),),
            trailing: Text('add disease',style: TextStyle(color: Colors.grey),),

          ),

          Divider(),
          ListTile(
            title: Text('Injuries',style: TextStyle(color: Colors.grey),),
            trailing: Text('add incidents',style: TextStyle(color: Colors.grey),),

          ),

          Divider(),
          ListTile(
            title: Text('Surgeries',style: TextStyle(color: Colors.grey),),
            trailing: Text('add surgeries',style: TextStyle(color: Colors.grey),),

          ),

          Divider(),
    ],
      )
    ); }
}
