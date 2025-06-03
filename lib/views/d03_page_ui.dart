// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(
    D03PageUi(),
  );
}

class D03PageUi extends StatefulWidget {
  const D03PageUi({super.key});

  @override
  State<D03PageUi> createState() => _D03PageUiState();
}

class _D03PageUiState extends State<D03PageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10.0),
            SafeArea(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      '9:41',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
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
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: InkWell(
                  onTap: () {
                    // การย้อนกลับไปหน้าก่อนหน้า
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: EdgeInsets.only(
                      left: 8.0,
                      top: 8.0,
                      bottom: 8.0,
                      right: 8.0,
                    ),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(
                          255, 248, 248, 244), // พื้นหลังสี
                      shape: BoxShape
                          .rectangle, // หรือใช้ BoxShape.rectangle ถ้าไม่ต้องการวงกลม
                      borderRadius:
                          BorderRadius.circular(10.0), // รัศมีของวงกลม
                      border: Border.all(
                        color: const Color.fromARGB(
                            255, 201, 201, 199), // สีของเส้นรอบวงกลม
                        width: 2.0, // ความหนาของเส้นรอบวงกลม
                      ),
                    ),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: const Color.fromARGB(255, 7, 0, 0),
                      size: 25.0,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 40.0),
                  Transform.translate(
                    offset: Offset(-20, 0), // ขยับข้อความขึ้นให้ชิดภาพ
                    child: Text(
                      'Hello! Register to get',
                      style: GoogleFonts.merriweather(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Transform.translate(
                    offset: Offset(-20, 0), // ขยับข้อความขึ้นให้ชิดภาพ
                    child: Text(
                      'started',
                      style: GoogleFonts.merriweather(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  const SizedBox(
                    height: 8.0,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[100],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide:
                            const BorderSide(color: Colors.white, width: 1.0),
                      ),
                      hintText: 'Username',
                      hintStyle: const TextStyle(
                        color: Color.fromARGB(255, 191, 172, 172),
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[100],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide:
                            const BorderSide(color: Colors.white, width: 1.0),
                      ),
                      hintText: 'Email',
                      hintStyle: const TextStyle(
                        color: Color.fromARGB(255, 191, 172, 172),
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[100],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide:
                            const BorderSide(color: Colors.white, width: 1.0),
                      ),
                      hintText: 'Password',
                      hintStyle: const TextStyle(
                        color: Color.fromARGB(255, 191, 172, 172),
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[100],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide:
                            const BorderSide(color: Colors.white, width: 1.0),
                      ),
                      hintText: 'Confirm Password',
                      hintStyle: const TextStyle(
                        color: Color.fromARGB(255, 191, 172, 172),
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30.0),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: double.infinity,
                      height: 55.0,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromARGB(255, 167, 242, 221),
                            Color.fromARGB(255, 89, 231, 239),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 80.0,
                  ),
                  Transform.translate(
                    offset: Offset(0, -5.0),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Divider(
                              color: Colors.grey[200],
                              thickness: 1,
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text(
                              ' Or Login with ',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[400],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Divider(
                              color: Colors.grey[200],
                              thickness: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Image.asset(
                          'assets/images/imge3.png',
                          width: 50.0,
                          height: 50.0,
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: const RoundedRectangleBorder(),
                          padding: const EdgeInsets.all(16),
                        ),
                      ),
                      const SizedBox(width: 10.0),
                      ElevatedButton(
                        onPressed: () {},
                        child: Image.asset(
                          'assets/images/imge4.png',
                          width: 50.0,
                          height: 50.0,
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: const RoundedRectangleBorder(),
                          padding: const EdgeInsets.all(16),
                        ),
                      ),
                      const SizedBox(width: 10.0),
                      ElevatedButton(
                        onPressed: () {},
                        child: Image.asset(
                          'assets/images/imge5.png',
                          width: 50.0,
                          height: 50.0,
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: const RoundedRectangleBorder(),
                          padding: const EdgeInsets.all(16),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                        style: TextStyle(
                          color: Colors.grey[800],
                          fontSize: 16.0,
                        ),
                      ),
                      const SizedBox(width: 4.0),
                      InkWell(
                        onTap: () {},
                        child: const Text(
                          'Login Now',
                          style: TextStyle(
                            color: Color.fromARGB(255, 97, 196, 117),
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
