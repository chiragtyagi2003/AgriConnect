import 'package:agriconnect/serviceWidget.dart';
import 'package:flutter/material.dart';

class ALM extends StatelessWidget {
  const ALM({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Manage your Land'),
        backgroundColor: Colors.cyan,
      ),

      body:SingleChildScrollView(
        child: Container(
          child: Column(
            children: [

              ServiceWidget(name: 'Lease your Land',
                  imageUrl: 'https://i.pinimg.com/736x/99/f1/05/99f1050b9e3b01f217581de9e2e685af.jpg',
                  desc: 'Lease your land and earn'),

              ServiceWidget(name: 'Monitor activities at your land',
                  imageUrl: 'https://i.pinimg.com/564x/a7/1a/77/a71a77e6ead267366e92c397f9876d70.jpg',
                  desc: 'Keep an eye on things from away'),

              SizedBox(height: 10.0,),
            ],
          ),
        ),
      ),
    );
  }
}
