import 'package:campuscoach/SubMain_leave/main_leavesta.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';  // Ensure this is included in pubspec.yaml
import 'package:flutter/services.dart'; // For TextInputFormatter

class main_leaveapp extends StatefulWidget {
  @override
  _MainLeaveAppState createState() => _MainLeaveAppState();
}

class _MainLeaveAppState extends State<main_leaveapp> {
  TextEditingController _startDateController = TextEditingController();
  TextEditingController _endDateController = TextEditingController();
  String _selectedLeaveType = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Leave Application Form'),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (context, constraints) {
          double screenWidth = constraints.maxWidth;
          double screenHeight = constraints.maxHeight;

          return Padding(
            padding: EdgeInsets.all(screenWidth * 0.04), // 4% of screen width
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title Input
                  Text('Title', style: TextStyle(fontSize: screenWidth * 0.04, fontWeight: FontWeight.bold)),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter title',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(screenWidth * 0.03), // 3% of screen width
                        borderSide: BorderSide(color: Color(0xC7C0CFFA)), // Inactive color
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(screenWidth * 0.03),
                        borderSide: BorderSide(color: Color(0xFF566DA1)), // Active color
                      ),
                    ),
                    maxLength: 60,
                    maxLengthEnforcement: MaxLengthEnforcement.enforced,
                  ),
                  SizedBox(height: screenHeight * 0.01), // 2% of screen height

                  // Leave Type Dropdown
                  Text('Leave Type', style: TextStyle(fontSize: screenWidth * 0.04, fontWeight: FontWeight.bold)),
                  DropdownButtonFormField<String>(
                    value: _selectedLeaveType.isNotEmpty ? _selectedLeaveType : null,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(screenWidth * 0.03),
                        borderSide: BorderSide(color: Color(0xC7C0CFFA)), // Inactive color
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(screenWidth * 0.03),
                        borderSide: BorderSide(color: Color(0xFF566DA1)), // Active color
                      ),
                    ),
                    items: ['Sick Leave', 'Casual Leave', 'Emergency Leave']
                        .map((type) => DropdownMenuItem(
                      child: Text(type),
                      value: type,
                    ))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        _selectedLeaveType = value!;
                      });
                    },
                    hint: Text('Select leave type'),
                    isExpanded: true, // Ensures the dropdown is properly constrained
                  ),
                  SizedBox(height: screenHeight * 0.04), // 3% of screen height

                  // Contact Number Input
                  Text('Contact Number', style: TextStyle(fontSize: screenWidth * 0.04, fontWeight: FontWeight.bold)),
                  TextField(
                    keyboardType: TextInputType.number,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    decoration: InputDecoration(
                      hintText: 'Enter contact number',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(screenWidth * 0.03),
                        borderSide: BorderSide(color: Color(0xC7C0CFFA)), // Inactive color
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(screenWidth * 0.03),
                        borderSide: BorderSide(color: Color(0xFF566DA1)), // Active color
                      ),
                    ),
                    maxLength: 10,
                  ),
                  SizedBox(height: screenHeight * 0.013), // 2% of screen height

                  // Start Date and End Date
                  Text('Dates', style: TextStyle(fontSize: screenWidth * 0.04, fontWeight: FontWeight.bold)),
                  Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () => _selectDate(context, 'start'),
                          child: AbsorbPointer(
                            child: TextField(
                              controller: _startDateController,
                              decoration: InputDecoration(
                                hintText: 'Start Date',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(screenWidth * 0.03),
                                  borderSide: BorderSide(color: Color(0xC7C0CFFA)), // Inactive color
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(screenWidth * 0.03),
                                  borderSide: BorderSide(color: Color(0xFF566DA1)), // Active color
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: screenWidth * 0.06), // 4% of screen width
                      Expanded(
                        child: GestureDetector(
                          onTap: () => _selectDate(context, 'end'),
                          child: AbsorbPointer(
                            child: TextField(
                              controller: _endDateController,
                              decoration: InputDecoration(
                                hintText: 'End Date',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(screenWidth * 0.03),
                                  borderSide: BorderSide(color: Color(0xC7C0CFFA)), // Inactive color
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(screenWidth * 0.03),
                                  borderSide: BorderSide(color: Color(0xFF566DA1)), // Active color
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.048), // 4% of screen height

                  // Proof File Attachment (No logic, just box)
                  Text('Proof File Attachment', style: TextStyle(fontSize: screenWidth * 0.04, fontWeight: FontWeight.bold)),
                  Container(
                    width: double.infinity,
                    height: screenHeight * 0.15,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFF94A4C9), width: 2),
                      borderRadius: BorderRadius.circular(screenWidth * 0.03),
                    ),
                    child: Center(child: Text('Attach File', style: TextStyle(color: Colors.grey))),
                  ),
                  SizedBox(height: screenHeight * 0.03), // 3% of screen height

                  // Submit Button
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => main_leavesta()));
                      },
                      child: Text('Apply',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white, // Text color
                        backgroundColor: Color(0xFF566DA1), // Background color
                        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1, vertical: screenHeight * 0.02),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(screenWidth * 0.02),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Future<void> _selectDate(BuildContext context, String type) async {
    final DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (selectedDate != null) {
      final String formattedDate = DateFormat('yyyy-MM-dd').format(selectedDate);
      if (type == 'start') {
        setState(() {
          _startDateController.text = formattedDate;
        });
      } else if (type == 'end') {
        setState(() {
          _endDateController.text = formattedDate;
        });
      }
    }
  }
}
