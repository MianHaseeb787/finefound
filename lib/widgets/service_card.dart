import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ServiceCard extends StatefulWidget {
  const ServiceCard({super.key});

  @override
  State<ServiceCard> createState() => _ServiceCardState();
}

class _ServiceCardState extends State<ServiceCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        // decoration: BoxDecoration(
        //     border:
        //         Border.all(width: 2, color: Colors.black)),
        padding: EdgeInsets.symmetric(horizontal: 5),
        margin: EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      child: Image.asset(
                        './assets/images/cardimage.png',
                        fit: BoxFit.fill,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Title'),
                            SizedBox(
                              width: 5,
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  './assets/images/certified.png',
                                  width: 30,
                                  height: 30,
                                ),
                                Image.asset(
                                  './assets/images/up.png',
                                  width: 30,
                                  height: 30,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text('PACO'),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'Viajes Y Turismo',
                              style: TextStyle(fontSize: 10),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Color.fromARGB(255, 212, 212, 212),
                            ),
                            Text(
                              'Pontevedra, provincia , España',
                              style: TextStyle(fontSize: 10),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.message_outlined,
                          color: Color.fromARGB(255, 191, 191, 191),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.favorite_outline,
                          color: Color.fromARGB(255, 219, 219, 219),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          './assets/images/star.svg',
                          width: 25,
                          height: 25,
                        ),
                        Text(
                          '5.0',
                          style: TextStyle(
                            color: Color.fromARGB(255, 252, 199, 42),
                          ),
                        ),
                        Text(
                          '(2)',
                          style: TextStyle(
                              color: Color.fromARGB(255, 188, 188, 188)),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '35.00',
                          style: TextStyle(
                            color: Color.fromARGB(255, 9, 124, 225),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            )
          ],
        ));
  }
}
