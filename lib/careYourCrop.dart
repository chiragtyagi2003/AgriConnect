import 'package:flutter/material.dart';
import 'package:agriconnect/cropCard.dart';
import 'package:agriconnect/Maize.dart';

class Crops extends StatelessWidget {
  const Crops({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose Your Crop'),
        backgroundColor: Colors.cyan,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [

              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Maize(),
                        ),
                      );
                    },
                    child: CropWidget(
                      name:'Maize Crop'
                      ,imageUrl: 'https://i.pinimg.com/564x/2d/cf/7b/2dcf7be68e07f31656e6ca1f4ba3f6b5.jpg',),
                  ),

                  SizedBox(width: 10.0,),

                  CropWidget(
                      name: 'SugarCane',
                      imageUrl: 'https://i.pinimg.com/564x/36/9a/94/369a9402b54169911d20ac83d8960662.jpg'),
                ],
              ),

              Row(
                children: [
                  CropWidget(
                    name:'Cotton'
                    ,imageUrl: 'https://i.pinimg.com/564x/bd/28/c0/bd28c000e8371a8a1c255efc7c865b70.jpg',),

                  SizedBox(width: 10.0,),

                  CropWidget(
                      name: 'Tobbaco',
                      imageUrl: 'https://i.pinimg.com/564x/d7/24/76/d7247640651e50c40ee2f0ce0a644927.jpg'),
                ],

              ),

              Row(
                children: [
                  CropWidget(
                    name:'Paddy'
                    ,imageUrl: 'https://i.pinimg.com/564x/ec/cd/1d/eccd1d71fe61519bf2569fdbd91635ee.jpg',),

                  SizedBox(width: 10.0,),

                  CropWidget(
                      name: 'Barley',
                      imageUrl: 'https://i.pinimg.com/564x/13/c3/13/13c3131e86c76901956167beb3a467d4.jpg'),
                ],
              ),

              Row(
                children: [
                  CropWidget(
                    name:'Wheat'
                    ,imageUrl: 'https://i.pinimg.com/564x/43/97/06/4397069f003c656d1af7d6aee2c8a533.jpg',),

                  SizedBox(width: 10.0,),

                  CropWidget(
                      name: 'Millets',
                      imageUrl: 'https://i.pinimg.com/564x/84/02/f7/8402f77f5cdec16dc2f82b035c01dd05.jpg'),
                ],
              ),

                Row(
                children: [
                  CropWidget(
                    name:'Pulses'
                    ,imageUrl: 'https://i.pinimg.com/564x/93/b5/a1/93b5a15f6ea7918d100b238e9995ddca.jpg',),

                  SizedBox(width: 10.0,),

                  CropWidget(
                      name: 'Ground Nuts',
                      imageUrl: 'https://i.pinimg.com/564x/9a/69/2e/9a692e4d7c9a0513d585e889376532f5.jpg'),
                ],
              ),


            ],
          ),
        ),
      ),
    );
  }
}
