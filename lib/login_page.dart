import 'package:flutter/material.dart';

class Log_in extends StatelessWidget {
  const Log_in({Key? key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.blue, // Set background color
      body: Center(
        child: Container(
          margin: EdgeInsets.all(20), // Add margin to the container
          child: Column(
            mainAxisSize: MainAxisSize.min, // Take minimum space
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "KUMIT : Online Companion",
                style: TextStyle(
                  fontSize: 48.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // Add your login form or content here
            ],
          ),
        ),
      ),
    );
  }
}
