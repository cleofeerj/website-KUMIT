import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../login_page.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, Constraints) {
        if (Constraints.maxWidth > 1200) {
          return DesktopNavbar();
        } else if (Constraints.maxWidth > 800 && Constraints.maxWidth < 1200) {
          return DesktopNavbar();
        } else {
          return const MobileNavbar();
        }
      },
    );
  }
}

class DesktopNavbar extends StatelessWidget {
  const DesktopNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'KUMIT',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30),
            ),
            Row(
              children: [
                Text(
                  'Home',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(width: 30),
                Text(
                  'About Us',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(width: 30),
                Text(
                  'FAQs',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(width: 30),
                MaterialButton(
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Log_in()),
                    );
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  const MobileNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Column(
          children: [
            Text(
              'KUMIT',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Home',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(width: 30),
                  Text(
                    'About Us',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(width: 30),
                  Text(
                    'FAQs',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(width: 30),
                  MaterialButton(
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Log_in()),
                      );
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
