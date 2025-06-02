// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    A01PageUi(),
  );
}

class A01PageUi extends StatefulWidget {
  const A01PageUi({super.key});

  @override
  State<A01PageUi> createState() => _A01PageUiState();
}

class _A01PageUiState extends State<A01PageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Transform.translate(
                offset: Offset(0, -160), //ลบคือ เลื่อนขึ้น
                child: Stack(
                  children: [
                    Container(
                      //พี้นที่ 4 เหลี่ยม
                      width: 400.0, // ความกว้างของพื้นหลังสี่เหลี่ยม
                      height: 330.0, // ความสูงของพื้นหลังสี่เหลี่ยม
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(
                            255, 231, 110, 189), // พื้นหลังสี
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                          bottomLeft: Radius.circular(50.0),
                          bottomRight: Radius.circular(50.0),
                        ), // รัศมีของพื้นหลัง
                      ),
                    ),
                    // รูปภาพที่ทับอยู่ด้านบน
                    Positioned(
                      top: 30, // ขยับรูปให้ลอยขึ้น
                      child: Image.asset(
                        'assets/images/imga1.png',
                        height: 300.0,
                        width: 300.0,
                      ),
                    ),
                  ],
                ),
              ),
              Transform.translate(
                offset: Offset(0, -155), //ลบคือ เลื่อนขึ้น
                child: Text(
                  'Discover Your',
                  style: GoogleFonts.merriweather(
                    fontSize: 30.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(0, -150), //ลบคือ เลื่อนขึ้น
                child: Text(
                  'Own Dream House',
                  style: GoogleFonts.merriweather(
                    fontSize: 30.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(0, -130), //ลบคือ เลื่อนขึ้น
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                    right: 20.0,
                  ),
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                    'Diam maecenas mi non sed ut odio. Non, justo, sed facilisi et. '
                    'Eget viverra urna, vestibulum egestas faucibus egestas. '
                    'Sagittis nam velit volutpat eu nunc.',
                    textAlign: TextAlign.center,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.merriweather(
                      fontSize: 15.0,
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 249, 135, 181),
                      fixedSize: Size(
                        180.0,
                        55.0,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(0.0),
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(0.0),
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Register',
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 25.0,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[200],
                      fixedSize: Size(
                        180.0,
                        55.0,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(0.0),
                          topRight: Radius.circular(10.0),
                          bottomLeft: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
