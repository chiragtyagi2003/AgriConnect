import 'package:agriconnect/hire.dart';
import 'package:agriconnect/serviceWidget.dart';
import 'package:flutter/material.dart';
import 'package:agriconnect/services.dart';

class Services extends StatelessWidget {
  const Services({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Services'),
        backgroundColor: Colors.cyan,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              ServiceWidget(
                name: 'Hire a machinery',
                imageUrl: 'https://i.pinimg.com/564x/2b/51/4c/2b514ca8539f64604bd422e789b6730b.jpg',
                desc: 'Hire machines and drivers to work on your land',),

              SizedBox(height: 10.0,),

              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Hire(),
                    ),
                  );
                },
                child: ServiceWidget(name: 'Hire Farm Workers',
                    imageUrl: 'https://i.pinimg.com/564x/6d/bd/82/6dbd821ef550dee01461c4038ef79e03.jpg',
                    desc: 'Hire workers from our listings'),
              ),

              SizedBox(height: 10.0,),

              ServiceWidget(name: 'Lease your Land',
                  imageUrl: 'https://i.pinimg.com/736x/99/f1/05/99f1050b9e3b01f217581de9e2e685af.jpg',
                  desc: 'Lease your land and earn'),

              SizedBox(height: 10.0,),

              ServiceWidget(
                  name: 'Rent a land for your crop',
                  imageUrl: 'https://i.pinimg.com/564x/f7/3a/1f/f73a1faf8f964e21e66e90cddbfc373e.jpg',
                  desc: 'look for lands in your area for growing your crop'),

              SizedBox(height: 10.0,),

              ServiceWidget(
                  name: 'Care your Crop',
                  imageUrl: 'https://i.pinimg.com/564x/87/15/da/8715da68bf32a2ff3ba8c84126ac7b07.jpg',
                  desc: 'Information about crops and their care'),
            ],
          ),
        ),
      ),
    );
  }
}
