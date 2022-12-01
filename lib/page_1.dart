import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 80.0,
            backgroundImage: AssetImage('images/nmeet.png'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Text(
              'Get a Link that you can share',
              style: GoogleFonts.poppins(fontSize: 20, letterSpacing: 0),
            ),
          ), // Main Text
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 75.0, right: 75.0),
            child: Text(
              'Tap New Meeting to get a link that you can send to people that you want to meet with',
              style: GoogleFonts.poppins(fontSize: 12),
              textAlign: TextAlign.center,
            ),
          ), // Sub Text
        ],
      ),
    );
  }
}
