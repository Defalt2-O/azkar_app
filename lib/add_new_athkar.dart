import 'package:flutter/material.dart';

final _AzkarName = TextEditingController();

class AddNewAthkar extends StatelessWidget {
  const AddNewAthkar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Add Azkar',
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        iconTheme: const IconThemeData(),
      ),
      resizeToAvoidBottomInset: false, // prevents black/yellow overflow error
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.nights_stay_sharp,
              size: 156,
              color: Color.fromARGB(255, 156, 228, 254),
            ),
            const SizedBox(height: 30),
            GestureDetector(
              onTap: () {
                print('card');
              },
              child: const Padding(
                padding: EdgeInsets.only(bottom: 10, left: 110, right: 110),
                child: Card(
                  elevation: 20,
                  color: Color.fromARGB(255, 124, 142, 144),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          size: 36,
                          Icons.edit,
                          color: Colors.white,
                        ),
                        SizedBox(width: 12.0),
                        Text(
                          'Edit Icon',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                controller: _AzkarName,
                maxLength: 50,
                decoration: const InputDecoration(
                  hintText: 'Name Azkar',
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Color.fromARGB(255, 162, 226, 236),
                  ),
                ),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Color.fromARGB(255, 70, 201, 221),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            GestureDetector(
              onTap: () {
                // Go to Dhikr Screen
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                child: Card(
                  elevation: 20,
                  color: Color.fromARGB(255, 95, 218, 234),
                  child: Padding(
                    padding: EdgeInsets.all(7.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          size: 36,
                          Icons.add_circle_outline_sharp,
                          color: Colors.white,
                        ),
                        SizedBox(width: 12.0),
                        Text(
                          'Add Dhikr',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 130),
          ],
        ),
      ),
    );
  }
}
