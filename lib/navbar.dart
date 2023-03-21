import 'package:agriconnect/careYourCrop.dart';
import 'package:agriconnect/home.dart';
import 'package:agriconnect/products.dart';
import 'package:agriconnect/services.dart';
import 'package:flutter/material.dart';
import 'package:agriconnect/alm.dart';

class NavBar extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          //header for navbar, user name and account info
          UserAccountsDrawerHeader(accountName: Text('Kishan Kumar Singh'),
            accountEmail: Text('kishan234@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHlYiiGENMbNxa3Qnsfu51bR9nIxNBPsOxpg&usqp=CAU',
                  width:90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.cyan,
            ),
          ),

          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            //on tapping it we navigate to home screen
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home(),
                ),
              );
            },
          ),

          ListTile(
            leading: Icon(Icons.home_work_sharp),
            title: Text('Agriculutural Land Management'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ALM(),
                ),
              );
            },

          ),

          //to add a division line
          Divider(),

          ListTile(
            leading: Icon(Icons.production_quantity_limits_outlined),
            title: Text('E-Store'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Products(),
                ),
              );
            },
          ),

          ListTile(
            leading: Icon(Icons.miscellaneous_services),
            title: Text('Services'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Services(),
                ),
              );
            },
          ),

          Divider(),
          ListTile(
            leading: Icon(Icons.share),
            title: Text('Care your Crop'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Crops(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}