import 'package:flutter/material.dart';
import 'package:agriconnect/workers.dart';

class Hire extends StatelessWidget {
  const Hire({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text('Hire Workers'),
      ),

      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [

              Container(
                margin: EdgeInsets.only(top: 30.0, left: 5.0, right: 5.0),
                child: Image.network(
                  'https://i.pinimg.com/564x/6d/bd/82/6dbd821ef550dee01461c4038ef79e03.jpg',
                  fit: BoxFit.cover,
                ),
                width: 500,
                height: 400,
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hire Wokers for your farm',
                      style: TextStyle(
                        fontSize: 20,
                        //fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Search through our Job listings",
                      style: TextStyle(

                        fontSize: 26,
                      ),
                    ),
                  ],
                ),
              ),
              Workers(
                imageUrl: 'https://t3.ftcdn.net/jpg/04/32/15/18/360_F_432151892_oQ3YQDo2LYZPILlEMnlo55PjjgiUwnQb.jpg',
                title: 'Ram Singh',
                subtitle: 'Harvester',
                desc: 'Location: Haryana',
              ),

              Workers(
                imageUrl: 'https://gumlet.assettype.com/swarajya%2F2020-07%2Fd27080f2-2655-4694-90bb-6a1a57805038%2Fsowing.jpg?q=75&auto=format%2Ccompress&w=1200',
                title: 'Kishan',
                subtitle: 'Irrigator',
                desc: 'Location: Rajasthan',
              ),

              Workers(
                imageUrl: 'https://www.actionaidindia.org/wp-content/uploads/2018/06/22a1-1.jpg',
                title: 'Shanti Devi',
                subtitle: 'Tea Crop Specialist',
                desc: 'Location: Himachal Pradesh',
              ),

              Workers(
                imageUrl: 'https://t3.ftcdn.net/jpg/03/26/96/04/360_F_326960484_ctiFXRqXe4a1XBbRmOI0bvD0otDqgk49.jpg',
                title: 'Karanjot Singh',
                subtitle: 'Wheat field worker ',
                desc: 'Location: Himachal Pradesh',
              ),

            ],

          ),
        ),
      ),
    );
  }
}
