// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(
    E05PageUi(),
  );
}

class E05PageUi extends StatefulWidget {
  const E05PageUi({super.key});

  @override
  State<E05PageUi> createState() => _E05PageUiState();
}

class _E05PageUiState extends State<E05PageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(
          left: 40.0,
          right: 40.0,
        ),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 15.0,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: InkWell(
                  onTap: () {
                    // การย้อนกลับไปหน้าก่อนหน้า
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(
                          255, 219, 191, 100), // พื้นหลังสี
                      shape: BoxShape
                          .circle, // หรือใช้ BoxShape.rectangle ถ้าไม่ต้องการวงกลม
                    ),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: const Color.fromARGB(255, 255, 252, 252),
                      size: 30.0,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'OTP Verification',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[1000],
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Image.asset(
                  'assets/images/imge6.png',
                  width: 350.0,
                  height: 350.0,
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Enter OTP',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[1000],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'An 4 digit code has been sent to your email',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey[1000],
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      minWidth: 50,
                      maxWidth: 50,
                      minHeight: 40,
                      maxHeight: 60,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true, // ต้องใส่เพื่อให้ fillColor ทำงาน
                        fillColor: Colors.grey[200], // สีพื้นหลังของ TextField
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      minWidth: 50,
                      maxWidth: 50,
                      minHeight: 40,
                      maxHeight: 60,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true, // ต้องใส่เพื่อให้ fillColor ทำงาน
                        fillColor: Colors.grey[200], // สีพื้นหลังของ TextField
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      minWidth: 50,
                      maxWidth: 50,
                      minHeight: 40,
                      maxHeight: 60,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true, // ต้องใส่เพื่อให้ fillColor ทำงาน
                        fillColor: Colors.grey[200], // สีพื้นหลังของ TextField
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      minWidth: 50,
                      maxWidth: 50,
                      minHeight: 40,
                      maxHeight: 60,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true, // ต้องใส่เพื่อให้ fillColor ทำงาน
                        fillColor: Colors.grey[200], // สีพื้นหลังของ TextField
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "You should receive the OTP in ",
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 15.0,
                    ),
                  ),
                  SizedBox(
                    width: 2.0,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      '30 Seconds',
                      style: TextStyle(
                        color: Colors.orange[800],
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Sign In',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 233, 152, 30),
                  fixedSize: Size(
                    300.0,
                    55.0,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
