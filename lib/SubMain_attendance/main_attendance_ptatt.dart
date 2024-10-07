import 'package:flutter/material.dart';
import '/SubMain_attendance/SubMain_attendance_display.dart';

class main_attendance_ptatt extends StatefulWidget {
  @override
  State<main_attendance_ptatt> createState() => _main_attendance_ptattState();
}

class _main_attendance_ptattState extends State<main_attendance_ptatt> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // Define the height and width for each container based on screen size
    double containerHeight = screenHeight * 0.09; // 9% of screen height
    double containerWidth = screenWidth * 0.9; // 90% of screen width

    return Scaffold(
      appBar: AppBar(
        title: Text('Previous Term Attendance'),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Add padding around the containers
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Semester 4
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SubMain_attendance_display()));
              },
              child: Container(
                height: containerHeight,
                width: containerWidth,
                decoration: BoxDecoration(
                  color: Color(0xC7C0CFFA), // Background color
                  borderRadius: BorderRadius.circular(20), // Rounded corners
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Semester 4',
                        style: TextStyle(
                          color: Color(0xFF566DA1), // Text color
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '23.38%', // Replace with dynamic value
                        style: TextStyle(
                          color: Color(0xFF566DA1), // Text color
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 16), // Space between containers

            // Semester 3
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SubMain_attendance_display()));
              },
              child: Container(
                height: containerHeight,
                width: containerWidth,
                decoration: BoxDecoration(
                  color: Color(0xC7C0CFFA), // Background color
                  borderRadius: BorderRadius.circular(20), // Rounded corners
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Semester 3',
                        style: TextStyle(
                          color: Color(0xFF566DA1), // Text color
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '20.12%', // Replace with dynamic value
                        style: TextStyle(
                          color: Color(0xFF566DA1), // Text color
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 16), // Space between containers

            // Semester 2
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SubMain_attendance_display()));
              },
              child: Container(
                height: containerHeight,
                width: containerWidth,
                decoration: BoxDecoration(
                  color: Color(0xC7C0CFFA), // Background color
                  borderRadius: BorderRadius.circular(20), // Rounded corners
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Semester 2',
                        style: TextStyle(
                          color: Color(0xFF566DA1), // Text color
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '18.75%', // Replace with dynamic value
                        style: TextStyle(
                          color: Color(0xFF566DA1), // Text color
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 16), // Space between containers

            // Semester 1
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SubMain_attendance_display()));
              },
              child: Container(
                height: containerHeight,
                width: containerWidth,
                decoration: BoxDecoration(
                  color: Color(0xC7C0CFFA), // Background color
                  borderRadius: BorderRadius.circular(20), // Rounded corners
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Semester 1',
                        style: TextStyle(
                          color: Color(0xFF566DA1), // Text color
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '15.90%', // Replace with dynamic value
                        style: TextStyle(
                          color: Color(0xFF566DA1), // Text color
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
