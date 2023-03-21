import 'package:flutter/material.dart';

class Maize extends StatelessWidget {
  const Maize({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('How to Care your Maize!'),
        backgroundColor: Colors.cyan,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.all(5.0),
                padding: EdgeInsets.all(5.0),
                color: Colors.amber,
                child: Text(
                    'Follow these steps to get the best yield.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ),

              SizedBox(height: 10.0,),
              Container(
                child: Text(
                  '  1.Preffered Fertilizers to use:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
              ),

              SizedBox(height: 5.0,),
              Container(
                child: Column(
                  children: [

                    Text('      a. 17-17-17\n      b.Urea\n      c.14-35-14',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 10.0,),

              Container(
                child: Text(
                  '  2.General Points about Maize:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
              ),
              SizedBox(height: 5.0,),
              Container(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(5.0),
                      child: Text(
                        'Maize should be planted when the soil temperature is at least 10°C.'
                            ' The preferred soil temperature for maize seed germination ranges from 16°C-35°C.',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.all(5.0),
                      child: Text(
                        'Maize requires abundant sunlight for optimum yields. '
                            'An average minimum daily temperature of 20°C is adequate.'
                            ' Optimally, temperatures between 25–30°C are suitable for proper growth and development.',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.all(5.0),
                      child: Text( 'Maize is susceptible to pests and diseases such as stem borers, armyworms, and maize streak virus.'
                          ' It is important to monitor the crop regularly and take appropriate measures to control pests and diseases.',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),



            ],
          ),
        ),
      ),

    );
  }
}
