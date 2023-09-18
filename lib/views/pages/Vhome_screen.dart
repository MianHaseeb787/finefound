import 'package:finefound/widgets/service_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VHomeScreen extends StatefulWidget {
  const VHomeScreen({super.key});

  @override
  State<VHomeScreen> createState() => _VHomeScreenState();
}

class _VHomeScreenState extends State<VHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 9, 124, 225),
        elevation: 0,
        toolbarHeight: 0,
      ),
      body: SafeArea(
        child: Container(
          color: Color.fromARGB(255, 9, 124, 225),
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 30,
                                    child: Image.asset(
                                      './assets/images/profile.png',
                                      width: 60,
                                      height: 60,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Hello',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                      Text('Guillem B.',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold))
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                          Container(
                            // padding: EdgeInsets.symmetric(vertical: 2),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20))),
                            // border:
                            //     Border.all(width: 2, color: Colors.white)

                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 2),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.white),
                                        child: Icon(Icons.search)),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: Icon(
                                        Icons.people_outline,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        // controller: _textEditingController,
                        decoration: InputDecoration(
                          fillColor: Color.fromARGB(255, 242, 242, 242),
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          // labelText: 'Enter your name',
                          hintText: 'location or keywords',
                          // icon: Icon(Icons.person),
                          suffixIcon: Icon(
                            Icons.menu,
                            color: Color.fromARGB(255, 144, 143, 143),
                          ),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Color.fromARGB(255, 144, 143, 143),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        // validator: (value) {
                        //   // if (value.isEmpty) {
                        //   //   return 'Please enter your name';
                        //   // }
                        //   // return null;
                        // },
                        // keyboardType: TextInputType.text,
                        // textCapitalization: TextCapitalization.words,
                        // textInputAction: TextInputAction.next,
                        // autofocus: true,
                        // maxLength: 50,
                        onChanged: (value) {
                          // Add your onChanged logic here
                        },
                        onFieldSubmitted: (value) {
                          // Add your onFieldSubmitted logic here
                        },
                      ),
                    ],
                  )),
              Expanded(
                child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                        color: Color.fromARGB(255, 255, 255, 255)),
                    // color: Colors.red,
                    width: double.infinity,
                    // height: 700,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Image.asset(
                                    './assets/images/home.png',
                                    // width: 60,
                                    // color: Colors.black,
                                  ),
                                  Text('Category')
                                ],
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Column(
                                children: [
                                  Image.asset(
                                    './assets/images/home12.png',
                                    // width: 60,
                                    // color: Colors.black,
                                  ),
                                  Text('Category')
                                ],
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Column(
                                children: [
                                  Image.asset(
                                    './assets/images/home.png',
                                    // width: 60,
                                    // color: Colors.black,
                                  ),
                                  Text('Category')
                                ],
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Column(
                                children: [
                                  Image.asset(
                                    './assets/images/home.png',
                                    // width: 60,
                                    // color: Colors.black,
                                  ),
                                  Text('Category')
                                ],
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Column(
                                children: [Icon(Icons.home), Text('Category')],
                              ),
                              SizedBox(
                                width: 20,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Services',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        ServiceCard(),
                        ServiceCard(),
                        ServiceCard(),
                        ServiceCard(),
                        // ServiceCard(),
                      ],
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
