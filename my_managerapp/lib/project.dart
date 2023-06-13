import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  static var routeName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Project'),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  getTextAtIndex(index),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  width: double.infinity,
                  height: 48,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.8),
                    border: Border.all(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  String getTextAtIndex(int index) {
    // Return text based on index
    switch (index) {
      case 0:
        return 'Client Name';
      case 1:
        return 'Project Details';
      case 2:
        return 'Start Date';
      case 3:
        return 'Project Duration';
      case 4:
        return 'Payment Terms';
      case 5:
        return 'Select Quotation';
      default:
        return '';
    }
  }
}

void main() {
  runApp(MaterialApp(
    home: ProfileScreen(),
  ));
}
