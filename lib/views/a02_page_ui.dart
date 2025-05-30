// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    A02PageUi(),
  );
}

class A02PageUi extends StatefulWidget {
  const A02PageUi({super.key});

  @override
  State<A02PageUi> createState() => _A02PageUiState();
}

class _A02PageUiState extends State<A02PageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            SafeArea(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // เวลา
                    const Text(
                      '9:41',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    // ไอคอนต่าง ๆ
                    Row(
                      children: const [
                        Icon(Icons.signal_cellular_4_bar, size: 20),
                        SizedBox(width: 6),
                        Icon(Icons.wifi, size: 20),
                        SizedBox(width: 6),
                        Icon(CupertinoIcons.battery_100, size: 24),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(0, 10), //ลบคือ เลื่อนขึ้น
              child: Text(
                'Welcome Back',
                style: GoogleFonts.merriweather(
                  fontSize: 30.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(0, 10), //ลบคือ เลื่อนขึ้น
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
                    fontSize: 12.0,
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(0, 20), //ลบคือ เลื่อนขึ้น
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 40.0,
                  right: 40.0,
                  top: 1.0,
                  bottom: 1.0,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true, // ต้องใส่เพื่อให้ fillColor ทำงาน
                    fillColor: Colors.grey[200], // สีพื้นหลังของ TextField
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                        color: Colors.white, // สีของเส้นรอบ TextField
                      ),
                    ),
                    hintText: 'Username Email & Phone number',
                    hintStyle: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 12.0,
                    ),
                  ),
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(0, 30), //ลบคือ เลื่อนขึ้น
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 40.0,
                  right: 40.0,
                  top: 1.0,
                  bottom: 1.0,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true, // ต้องใส่เพื่อให้ fillColor ทำงาน
                    fillColor: Colors.grey[200], // สีพื้นหลังของ TextField
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                        color: Colors.white, // สีของเส้นรอบ TextField
                      ),
                    ),
                    hintText: 'Password',
                    hintStyle: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 12.0,
                    ),
                  ),
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(0, 30), //ลบคือ เลื่อนขึ้น
              child: Padding(
                padding: const EdgeInsets.only(
                  right: 40.0,
                ),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    onTap: () {},
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey[800],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(0, 50), //ลบคือ เลื่อนขึ้น
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Sign In',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 19.0,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 250, 117, 232),
                  fixedSize: Size(
                    300.0,
                    48.0,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(0, 70), //ลบคือ เลื่อนขึ้น
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Divider(
                        color: const Color.fromARGB(255, 225, 134, 210),
                        thickness: 2,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        ' Or Sign up with ',
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: const Color.fromARGB(255, 225, 134, 210),
                        thickness: 2,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(0, 100), //ลบคือ เลื่อนขึ้น
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Image.asset(
                      'assets/images/imga2.png',
                      width: 50.0,
                      height: 50.0,
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: const CircleBorder(), // ทำให้ปุ่มเป็นวงกล
                      padding: const EdgeInsets.all(16), // ขนาดของปุ่ม
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Image.asset(
                      'assets/images/imga3.png',
                      width: 50.0,
                      height: 50.0,
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: const CircleBorder(), // ทำให้ปุ่มเป็นวงกล
                      padding: const EdgeInsets.all(16), // ขนาดของปุ่ม
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Image.asset(
                      'assets/images/imga4.png',
                      width: 50.0,
                      height: 50.0,
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: const CircleBorder(), // ทำให้ปุ่มเป็นวงกล
                      padding: const EdgeInsets.all(16), // ขนาดของปุ่ม
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
