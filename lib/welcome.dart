import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
        backgroundColor: Colors.cyan,
      ),
      body: Container(
        margin: EdgeInsets.only(left: 25.0, right: 25.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 25.0),
                child: Text(
                  'AgriConnect',
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
              ),

              SizedBox(height: 10.0,),

              Container(
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHlYiiGENMbNxa3Qnsfu51bR9nIxNBPsOxpg&usqp=CAU',
                ),

              ),

              SizedBox(height: 10.0,),

              SizedBox(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'register');
                  },
                  child: Text('Register'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[900],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                //increases the height of button
                height: 45.0,
                //makes the button to take all available size in the screen
                width: double.infinity,
              ),

              SizedBox(height: 10.0,),

              SizedBox(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'login');
                  },
                  child: Text('Login'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green[400],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                //increases the height of button
                height: 45.0,
                //makes the button to take all available size in the screen
                width: double.infinity,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
