import 'package:azkar_app/add_new_athkar.dart';
import 'package:azkar_app/bottom_bottom_navigation.dart';
import 'package:flutter/material.dart';

class CreateAthkar extends StatelessWidget {
  const CreateAthkar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) => const AddNewAthkar(),
                    ),
                  );
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 105),
                  child: Card(
                    elevation: 20,
                    color: Color.fromARGB(255, 68, 232, 101),
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
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
                            'Add Athkar',
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
            ],
          ),
        ),
      ),
    );
  }
}
