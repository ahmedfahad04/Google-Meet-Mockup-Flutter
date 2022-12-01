import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Window1 extends StatefulWidget {
  const Window1({Key? key}) : super(key: key);

  @override
  State<Window1> createState() => _Window1State();
}

class _Window1State extends State<Window1> {
  final TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white12,
        title: Text(
          'Join with a code',
          style: GoogleFonts.poppins(fontSize: 21, color: Colors.black),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Join',
              style: GoogleFonts.poppins(fontSize: 13, color: Colors.grey),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10,),
            Text(
              'Enter the code provided by the meeting organiser',
              style: GoogleFonts.poppins(fontSize: 13, color: Colors.black),
            ),
            SizedBox(height: 10,),
            TextField(
              controller: _nameController,
              cursorColor: Colors.blue,
              decoration: InputDecoration(
                fillColor: Colors.grey[300],
                filled: true,
                labelStyle: GoogleFonts.poppins(fontSize: 15, color: Colors.blue[500]),
                hintText: 'Example: abc-mnop-xyz',
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 2),
                ),
                border: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
