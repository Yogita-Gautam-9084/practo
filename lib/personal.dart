import 'package:flutter/material.dart';

class Personal extends StatelessWidget {
  const Personal({Key? key}) : super(key: key);

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
            title: Text('Name',style: TextStyle(color: Colors.grey),),
            subtitle: Text(
              'Yogita Gautam',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Colors.black),
            ),
            trailing: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                'assets/doctors.png',
                height: 50,
                width: 50,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Divider(),
          ListTile(
            title: Text('Contact Number',style: TextStyle(color: Colors.grey),),
            trailing: Text('9084325091',style: TextStyle(color: Colors.black),),
          ),
          Divider(),
          ListTile(
            title: Row(
              children: [
                Text('Email ID',style: TextStyle(color: Colors.grey),),
                Spacer(),
                Text('test@gmail.com '),
                Icon(Icons.warning_amber_outlined,color: Colors.red,),
              ],
            ),
          ),
          Divider(),
          ListTile(
            title: Text('Gender',style: TextStyle(color: Colors.grey),),
            trailing: Text('Female'),
          ),
          Divider(),
          ListTile(
            title: Text('Date of Birth',style: TextStyle(color: Colors.grey),),
            trailing: Text('yy mm dd',style: TextStyle(color: Colors.grey),),
          ),
          Divider(),
          ListTile(
            title: Text('Blood Group',style: TextStyle(color: Colors.grey),),
            trailing: Text('B+'),
          ),
          Divider(),
          ListTile(
            title: Text('Marital Status',style: TextStyle(color: Colors.grey),),
            trailing: Text('Single'),
          ),
          Divider(),
          ListTile(
            title: Text('Height',style: TextStyle(color: Colors.grey),),
            trailing: Text('5ft 9in'),
          ),
          Divider(),
          ListTile(
            title: Text('Weight',style: TextStyle(color: Colors.grey),),
            trailing: Text('53 kgs'),
          ),
          Divider(),
          ListTile(
            title: Text('Emergency Contact',style: TextStyle(color: Colors.grey),),
            trailing: Column(
              children: [Text('Brother'), Text('8923738275')],
            ),
          ),
          Divider(),
          ListTile(
            title: Text('Location',style: TextStyle(color: Colors.grey),),
            trailing: Text('Noida'),
          ),
          Divider(),
        ],
      ),
    );
  }
}
