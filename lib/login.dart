import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  // var to store country code
  TextEditingController countrycode =  TextEditingController();

  // var to store phone number
  var phoneNumber = " ";

  @override
  void initState() {
    // TODO: implement initState
    countrycode.text = "+91";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
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

              Text(
                'Login',
                style: TextStyle(
                  fontSize: 35.0,
                ),
              ),

              SizedBox(height: 10.0,),

              Container(
                height: 55.0,
                decoration: BoxDecoration(
                  // giving the border to the text fields
                  border: Border.all(width: 1.0, color: Colors.grey),

                  // to make the border circular
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 10.0,),

                    SizedBox(
                      child: TextField(
                        controller: countrycode,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                      width: 40.0,
                    ),



                    Text(
                      "|",
                      style: TextStyle(
                        fontSize: 33.0,
                        color: Colors.grey,
                      ),
                    ),

                    SizedBox(width: 10.0,),

                    // expand takes the all left over size
                    // in the row
                    Expanded(
                      child: TextField(

                        // keyboard type numerical
                        keyboardType: TextInputType.phone,

                        // onchange set phoneNumber var
                        onChanged: (value) {
                          //phoneNumber = value;
                        },
                        decoration: InputDecoration(
                            border: InputBorder.none,

                            //placeholder text
                            hintText: "Phone Number"
                        ),

                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 10.0,),

              SizedBox(
                child: ElevatedButton(
                  onPressed: () {

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
