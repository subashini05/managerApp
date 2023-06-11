import 'package:flutter/material.dart';
import 'package:my_managerapp/SettingsScreen.dart';

class HomePage extends StatelessWidget {
  static const String routeName = '/home';

  void _goToSettingsPage(BuildContext context) {
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
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
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
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
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
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
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
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Amount',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        ),
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
                  items: <String>['Name 1', 'Name 2', 'Name 3']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  decoration: const InputDecoration(
                    labelText: 'Name',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  ),
                  onChanged: (String? value) {
                    // Handle name selection
                  },
                ),
              ),
              const SizedBox(height: 10),
              Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey),
                  ),
                  shape: BoxShape.rectangle,
                ),
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Amount',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextFormField(
                  maxLines: 3,
                  decoration: const InputDecoration(
                    labelText: 'Description',
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
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
        );
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
                        child: Image.asset(
                          'lib/assets/images/Vector_(1).png',
                          width: 30,
                          height: 30,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Simplr',
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'Welcome back!',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 90,
                      ),
                      Image.asset(
                        'lib/assets/images/Group_63.png',
                        width: 30,
                        height: 30,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        'lib/assets/images/Group_62.png',
                        width: 30,
                        height: 30,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        'lib/assets/images/Vector_(3).png',
                        width: 30,
                        height: 30,
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                    ],
                  ),
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(241, 241, 241, 1),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    const Text(
                      'Income',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return const ListTile(
                          title: Text('Project 1'),
                          subtitle: Text('Name 1'),
                          trailing: Text(
                            '+\$100',
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Expense',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return const ListTile(
                          title: Text('Project 1'),
                          subtitle: Text('Name 1'),
                          trailing: Text(
                            '-\$50',
                            style: TextStyle(
                                color: Colors.red, fontWeight: FontWeight.bold),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
