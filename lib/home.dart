import 'package:flutter/material.dart';
import 'package:agriconnect/navbar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.cyan,
      ),
      body: Container(
        margin: EdgeInsets.only(left: 25.0, right: 25.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 25.0),

                  // Heading
                  child: Text(
                    'AGRI.CONNECT',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 10.0,),

              CircleAvatar(
                radius: 150, // adjust the radius to your desired size
                backgroundImage: NetworkImage('https://i.pinimg.com/564x/56/f1/06/56f1062933dfcac77e2650d529431efa.jpg'),
              ),

              SizedBox(height: 10.0,),
              Text(
                  'What is AGRI.CONNECT?',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              
              SizedBox(height: 5.0,),
              Text(
                  'Agri.Connect is a platform aimed at facilitating all the services and needs required by farmers.',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 5.0,),
              Text(
                'E-Commerce Platform: Buy  all the farming tools and other necessities.',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 5.0,),
              Text(
                  'Job Listing and Searching: People can look for farm jobs here, Employeers can also post job listings.',
                      style: TextStyle(
                        fontSize: 16.0,
                      )
              ),
              SizedBox(height: 5.0,),
              Text(
                  'Agricultural Management System: Non-Residents can manage their agricultural lands.',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
