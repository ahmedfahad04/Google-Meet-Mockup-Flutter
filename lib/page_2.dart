import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 80.0,
            backgroundImage: AssetImage('images/safe.jpg'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Text(
              'Your Meeting is safe',
              style: GoogleFonts.poppins(fontSize: 20, letterSpacing: -1),
            ),
          ), // Main Text
          SizedBox(height: 5),
          Padding(
            padding: EdgeInsets.only(left: 60.0, right: 60.0),
            child: Text(
              'No one can join a meeting unless invited or admitted by the host',
              style: GoogleFonts.poppins(fontSize: 12),
              textAlign: TextAlign.center,
            ),
          ), // Sub Text
        ],
      ),
    );
  }
}
