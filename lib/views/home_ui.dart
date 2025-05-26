// ignore_for_file: dead_code, sort_child_properties_last

import 'package:flutter/material.dart';

void main() {
  runApp(
    HomeUi(),
  );
}

class HomeUi extends StatelessWidget {
  const HomeUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF390050), // Color(0xFF??????),  ??คือ รหัสสี
      body: Padding(
        padding: const EdgeInsets.only(
          left: 40.0,
          right: 40.0,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/img.png',
                width: 200.0,
                height: 200.0,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Go to A Page',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 210, 124, 174),
                  fixedSize: Size(
                    MediaQuery.of(context).size.width,
                    55.0,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ), // เมื่อกดปุ่ม:)

              SizedBox(
                height: 20.0,
              ),

              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Go to B Page',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 25, 69, 172),
                  fixedSize: Size(
                    MediaQuery.of(context).size.width,
                    55.0,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ), // เมื่อกดปุ่ม:)

              SizedBox(
                height: 20.0,
              ),

              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Go to C Page',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 16, 119, 28),
                  fixedSize: Size(
                    MediaQuery.of(context).size.width,
                    55.0,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ), // เมื่อกดปุ่ม:)

              SizedBox(
                height: 20.0,
              ),

              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Go to D Page',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 33, 214, 193),
                  fixedSize: Size(
                    MediaQuery.of(context).size.width,
                    55.0,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ), // เมื่อกดปุ่ม:)

              SizedBox(
                height: 20.0,
              ),

              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Go to E Page',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 234, 135, 49),
                  fixedSize: Size(
                    MediaQuery.of(context).size.width,
                    55.0,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ), // เมื่อกดปุ่ม:)
            ],
          ),
        ),
      ),
    );
  }
}
