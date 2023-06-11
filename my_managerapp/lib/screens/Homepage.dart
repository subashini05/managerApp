import 'package:flutter/material.dart';
import 'package:my_managerapp/screens/SettingsScreen.dart';

class HomePage extends StatelessWidget {
  static const String routeName = '/home';
  void _goToSettingsPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SettingsPage()),
    );
  }

  void _goToProjectPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SettingsPage()),
    );
  }

  void _showAddTransactionModal(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (BuildContext context) {
        return Container(

            // MediaQuery.of(context).size.width * 0.8, // Set the desired width
            child: Container(
          width: 500,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(18),
                              bottomLeft: Radius.circular(18),
                            ),
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 5),
                          child: const Text(
                            'Income',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(18),
                              bottomRight: Radius.circular(18),
                            ),
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 5),
                          child: const Text(
                            'Expense',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Colors.grey),
                        ),
                        shape: BoxShape.rectangle,
                      ),
                      child: DropdownButtonFormField<String>(
                        items: <String>['Project 1', 'Project 2', 'Project 3']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        decoration: const InputDecoration(
                          labelText: 'Project Name',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        ),
                        onChanged: (String? value) {
                          // Handle project selection
                        },
                      ),
                    ),
                    const SizedBox(width: 10),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: const BoxDecoration(
                              border: Border(
                                bottom: BorderSide(color: Colors.grey),
                              ),
                              shape: BoxShape.rectangle,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                DropdownButtonFormField<String>(
                                  items: <String>['Name 1', 'Name 2', 'Name 3']
                                      .map<DropdownMenuItem<String>>(
                                          (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                  decoration: const InputDecoration(
                                    labelText: 'Name',
                                    border: InputBorder.none,
                                    contentPadding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                  ),
                                  onChanged: (String? value) {
                                    // Handle name selection
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Container(
                            decoration: const BoxDecoration(
                              border: Border(
                                bottom: BorderSide(color: Colors.grey),
                              ),
                              shape: BoxShape.rectangle,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextFormField(
                                  decoration: const InputDecoration(
                                    labelText: 'Amount',
                                    border: InputBorder.none,
                                    contentPadding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Container(
                      height: 100,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.grey), // Add border on all sides
                        borderRadius: BorderRadius.circular(
                            8), // Add border radius if desired
                      ),
                      child: TextField(
                        style: const TextStyle(fontSize: 14),
                        decoration: const InputDecoration(
                          labelText: 'Description',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        ),
                        cursorColor: Colors.blue,
                        cursorWidth: 1.5,
                        cursorRadius: const Radius.circular(1.5),
                        onChanged: (value) {
                          // Handle input changes
                        },
                        onSubmitted: (value) {
                          // Handle form submission
                        },
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // Handle submit
                          },
                          child: const Text('Submit'),
                        ),
                        const SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context); // Close the modal
                          },
                          child: const Text('Cancel'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showAddTransactionModal(context);
        },
        backgroundColor: const Color.fromRGBO(55, 155, 103, 1),
        child: const Icon(
          Icons.add,
          size: 30.0,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        color: const Color(0xFF3B9B67),
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  child: Image.asset(
                    'lib/assets/images/HomePage.png',
                    width: 40,
                    height: 57,
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  child: Image.asset(
                    'lib/assets/images/Vector_(4).png',
                    width: 40,
                    height: 67,
                  ),
                ),
              ),
              const SizedBox(width: 60),
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  child: Image.asset(
                    'lib/assets/images/Vector_(5).png',
                    width: 40,
                    height: 67,
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  child: Image.asset(
                    'lib/assets/images/ComboChart.png',
                    width: 40,
                    height: 67,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: 412,
                height: 75,
                child: Container(
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 30,
                      ),
                      GestureDetector(
                        onTap: () {
                          _goToSettingsPage(context);
                        },
                        child: Image.asset('lib/assets/images/Vector.png'),
                      ),
                      const SizedBox(
                        width: 75,
                      ),
                      const Text(
                        'Builder Pulss',
                        style: TextStyle(
                          fontFamily: 'OpenSans',
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                    ],
                  ),
                  width: 380,
                  height: 70,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(55, 155, 103, 1),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: 342,
                height: 206,
                margin: const EdgeInsets.only(left: 10, right: 17),
                decoration: BoxDecoration(
                  color: const Color(0xFF5AB584),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  children: [
                    const Positioned(
                      top: 34,
                      bottom: 152,
                      child: Text(
                        '                    Total Balance',
                        style: TextStyle(
                          fontFamily: 'Abel',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                          fontSize: 22,
                          height: 0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 34,
                      bottom: 54.37,
                      child: Text(
                        '\n                      38776.0',
                        style: TextStyle(
                          fontFamily: 'Abel',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                          fontSize: 24,
                          height: 0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      width: 292,
                      height: 68,
                      margin: const EdgeInsets.only(
                        top: 113,
                        left: 25,
                        right: 25,
                        bottom: 25,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFF3B9B67),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}
