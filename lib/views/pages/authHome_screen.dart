import 'package:finefound/views/pages/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';

class AuthHomeScreen extends StatefulWidget {
  const AuthHomeScreen({super.key});

  @override
  State<AuthHomeScreen> createState() => _AuthHomeScreenState();
}

class _AuthHomeScreenState extends State<AuthHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 8, 104, 221),
      ),
      body: Column(
        children: [
          Container(
            // color: Colors.red,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 8, 104, 221),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(250),
                          bottomRight: Radius.circular(250))),
                  width: double.infinity,
                  height: 160,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'FINE',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 42,
                            color: Colors.white),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'found',
                        style: TextStyle(
                            // fontWeight: FontWeight.bold,
                            fontSize: 42,
                            color: Colors.white),
                      )
                    ],
                  ),
                ),
                Positioned.fill(
                  bottom: -20,
                  child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Image.asset('assets/images/searchcircle.png')),
                ),

                Positioned.fill(
                  // bottom: -20,
                  left: 20,
                  child: Align(
                      alignment: Alignment.bottomLeft,
                      child: SvgPicture.asset(
                        'assets/images/dots.svg',
                        width: 50,
                      )),
                ),

                // Positioned(bottom: 0, child: Icon(Icons.add))
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Expanded(
            // color: Colors.red,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              10.0), // Adjust the radius as needed
                        ),
                        primary: Color.fromARGB(255, 8, 104,
                            221), // Change this color to customize the button's background color
                      ),
                      onPressed: () {
                        // Add your button's functionality here
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'Continue with Email',
                          style: TextStyle(fontSize: 18),
                        ),
                      )),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(
                            width: 2,
                            color: Color.fromARGB(255, 221, 221, 221)),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              10.0), // Adjust the radius as needed
                        ),
                        primary: Color.fromARGB(255, 241, 241,
                            241), // Change this color to customize the button's background color
                      ),
                      onPressed: () {
                        // Add your button's functionality here
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'Continue as Guest',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(255, 8, 104, 221),
                          ),
                        ),
                      )),
                  Center(child: Text('or')),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SvgPicture.asset('assets/images/facebook.svg'),
                      SvgPicture.asset('assets/images/google.svg'),
                      SvgPicture.asset('assets/images/apple.svg')
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
              child: Container(
            width: double.infinity,
            // color: Colors.amber,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SvgPicture.asset('assets/images/dots.svg'),
                  SizedBox(
                    height: 30,
                  ),
                  Image.asset('assets/images/poly.png')
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
